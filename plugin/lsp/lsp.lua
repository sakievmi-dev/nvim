vim.pack.add({
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/williamboman/mason.nvim",
  "https://github.com/williamboman/mason-lspconfig.nvim",
  "https://github.com/saghen/blink.cmp",
  -- For nvim
  "https://github.com/folke/lazydev.nvim",
})

vim.diagnostic.config({
  virtual_text = true,
  signs = false,
  underline = true,
})

local has_blink, blink = pcall(require, "blink.cmp")
local capabilities = has_blink and blink.get_lsp_capabilities() or {}

local servers = {
  clangd = {
    cmd = {
      "clangd",
      "--clang-tidy",
      "--fallback-style=LLVM",
      "--background-index",
      "--query-driver=/usr/bin/g++,/usr/bin/gcc",
      "--compile-commands-dir=build",
    },
  },

  lua_ls = {
    cmd = { "lua-language-server" },
    root_markers = { ".luarc.json", ".luarc.jsonc", ".git" },
    settings = {
      Lua = {
        runtime = {
          version = "LuaJIT",
        },
        diagnostics = {
          globals = { "vim" },
        },
      },
    },
  },

  basedpyright = {
    settings = {
      basedpyright = {
        disableOrganizeImports = true,
        analysis = {
          typeCheckingMode = "standard",
          diagnosticMode = "workspace",
          autoSearchPaths = true,
          useLibraryCodeForTypes = true,
          autoImportCompletions = true,
          diagnosticSeverityOverrides = {},
        },
      },
    },
  },

  ruff = {
    init_options = {
      settings = {
        lint = {
          select = { "E", "W", "I" },
        },
      },
    },
  },

  html = {},

  cssls = {},
}

local ensure_installed = {}
for name, config in pairs(servers) do
  table.insert(ensure_installed, name)
  vim.lsp.config(name, vim.tbl_deep_extend("force", { capabilities = capabilities }, config))
  vim.lsp.enable(name)
end

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == "ruff" then
      client.server_capabilities.hoverProvider = false
    end
  end,
})

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = ensure_installed,
  automatic_installation = true,
  automatic_enable = false,
})

require("lazydev").setup({})

map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gr", vim.lsp.buf.references, { desc = "References" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Implementation" })
map("n", "gy", vim.lsp.buf.type_definition, { desc = "Type definition" })

map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
map("i", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature help" })

map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line diagnostics" })
