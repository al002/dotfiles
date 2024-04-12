local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  "html",
  "cssls",
  "emmet_ls",
  "clangd",
  "jsonls",
  "tsserver",
  "eslint",
  "rust_analyzer",
  "hls",
  "tailwindcss",
  -- "elixirls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  init_options = {
    userLanguages = {
      eelixir = "html-eex",
      eruby = "erb",
      templ = "html",
      elixir = "html-eex",
      heex = "html-eex",
    },
  },
  root_dir = lspconfig.util.root_pattern(
    "tailwind.config.js",
    "tailwind.config.cjs",
    "tailwind.config.mjs",
    "tailwind.config.ts",
    "./assets/tailwind.config.js",
    "postcss.config.js",
    "postcss.config.cjs",
    "postcss.config.mjs",
    "postcss.config.ts",
    "package.json",
    "node_modules",
    ".git"
  ),
}

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  settings = {
    ["rust-analyzer"] = {
      files = {
        excludeDirs = { "target", "node_modules" },
      },
    },
  },
}

--
-- lspconfig.pyright.setup { blabla}
