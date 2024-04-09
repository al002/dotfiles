local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "emmet_ls", "clangd", "jsonls", "tsserver", "eslint", "rust_analyzer", "hls", "tailwindcss", "elixirls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.elixirls.setup{
  cmd = { "/Users/al/.local/share/nvim/mason/bin/elixir-ls" }
}

lspconfig.rust_analyzer.setup({
  on_attach=on_attach,
  settings = {
    ["rust-analyzer"] = {
      check = {
        command = "clippy"
      },
      files = {
        excludeDirs = { "target", "node_modules" }
      }
    },
  }
})

-- 
-- lspconfig.pyright.setup { blabla}
