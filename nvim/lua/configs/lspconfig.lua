-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  html = {},
  cssls = {},
  clangd = {
    cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
  },
  jsonls = {},
  ts_ls = {},
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
      "/home/al/.local/share/nvim/mason/packages/elixir-ls/language_server.sh",
    },
  },
  gopls = {},
  solidity_ls = {},
  lemminx = {},
  pyright = {},
  ruff = {
    trace = "messages",
    init_options = {
      settings = {
        fixAll = true,
        organizeImports = false, -- let isort take care of organizeImports
        -- extra CLI arguments
        -- https://docs.astral.sh/ruff/configuration/#command-line-interface
        -- https://docs.astral.sh/ruff/rules/
        args = {
          "--preview", -- Use experimental features
          "--ignore",
          table.concat({
            "E111", -- indentation-with-invalid-multiple
            "E114", -- indentation-with-invalid-multiple-comment
            "E402", -- module-import-not-at-top-of-file
            "E501", -- line-too-long
            "E702", -- multiple-statements-on-one-line-semicolon
            "E731", -- lambda-assignment
            "F401", -- unused-import  (note: should be handled by pyright as 'hint')
          }, ","),
        },
        logLevel = "info",
      },
    },
  },
  csharp_ls = {
    AutomaticWorkspaceInit = true,
  },
}
local nvlsp = require "nvchad.configs.lspconfig"

for name, opts in pairs(servers) do
  opts.on_init = nvlsp.on_init
  opts.on_attach = nvlsp.on_attach
  opts.capabilities = nvlsp.capabilities

  require("lspconfig")[name].setup(opts)
end

require("csharpls_extended").buf_read_cmd_bind()

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
