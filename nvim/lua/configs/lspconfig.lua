-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "clangd",
  "jsonls",
  "ts_ls",
  "eslint",
  "rust_analyzer",
  "tailwindcss",
  "expert",
  "gopls",
  "solidity_ls",
  "lemminx",
  "pyright",
  "ruff",
  -- "csharp_ls",
}

vim.lsp.enable(servers)

vim.lsp.config("clangd", {
  cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
})

vim.lsp.config("rust_analyzer", {
  settings = {
    ["rust-analyzer"] = {
      files = {
        excludeDirs = { "target", "node_modules" },
      },
    },
  },
})

vim.lsp.config("pyright", {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "strict",
        diagnosticMode = "workspace",
        inlayHints = {
          variableTypes = true,
          functionReturnTypes = true,
        },
      },
    },
  },
})

vim.lsp.config("ruff", {
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
})

-- vim.lsp.config("csharp_ls", {
--   AutomaticWorkspaceInit = true,
-- })

-- require("csharpls_extended").buf_read_cmd_bind()

