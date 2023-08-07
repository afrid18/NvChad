local config = require "plugins.configs.lspconfig"
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

-- Go LSP configuration
lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

-- python LSP configuration
lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
}

-- This is a general table to add default lsp, below is a for loop
-- that configures default lsp for all the strings in servers table
local servers = { "html", "cssls", "tsserver", "clangd", "marksman" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
