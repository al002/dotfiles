local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd", "prettier" },
    html = { "prettierd", "prettier" },
    javascript = { "prettierd", "prettier" },
    javascriptreact = { "prettierd", "prettier" },
    typescript = { "prettierd", "prettier" },
    typescriptreact = { "prettierd", "prettier" },
    go = { "goimports", "gofmt" },
    python = { "ruff_format", "ruff_fix" },
    cs = { "csharpier" },
    elixir = { "mix" },
    eelixir = { "mix" },
    hex = { "mix" },
    surface = { "mix" }
    -- sql = { "sqlfluff" }

    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  formatters = {
    csharpier = {
      command = "dotnet-csharpier",
      args = { "--write-stdout" },
      stdin = true,
    },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
