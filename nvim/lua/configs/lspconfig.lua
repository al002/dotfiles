-- EXAMPLE
local configs = require "nvchad.configs.lspconfig"

local servers = {
  html = {},
  cssls = {},
  clangd = {},
  jsonls = {},
  tsserver = {},
  eslint = {},
  rust_analyzer = {
    settings = {
      ["rust-analyzer"] = {
        files = {
          excludeDirs = { "target", "node_modules" },
        },
      },
    },
  },
  tailwindcss = {},
  elixirls = {
    cmd = {
      "/Users/al/.local/share/nvim/mason/packages/elixir-ls/language_server.sh",
    },
  },
}

for name, opts in pairs(servers) do
  opts.on_init = configs.on_init
  opts.on_attach = configs.on_attach
  opts.capabilities = configs.capabilities

  require("lspconfig")[name].setup(opts)
end
