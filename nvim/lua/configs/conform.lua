local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { { "prettierd", "prettier" } },
    html = { { "prettierd", "prettier" } },
    javascript = { { "prettierd", "prettier" } },
    javascriptreact = { { "prettierd", "prettier" } },
    typescript= { { "prettierd", "prettier" } },
    typescriptreact = { { "prettierd", "prettier" } },
    go = { "goimports", "gofmt" },
    -- sql = { "sqlfluff" }
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
