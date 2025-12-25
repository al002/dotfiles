return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        -- lua
        "lua-language-server",
        "stylua",

        -- web
        "html-lsp",
        "css-lsp",
        "prettier",
        "typescript-language-server",
        "tailwindcss-language-server",
        "deno",
        "json-lsp",
        "expert",
        "gopls",
        "sqls",
        "csharp-language-server",

        -- rust
        "rust-analyzer",

        -- web3
        "vscode-solidity-server",

        -- c/cpp stuff
        "clangd",

        -- shell
        "shfmt",
        "shellcheck",
        "bash-language-server",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- default
        "vim",
        "lua",
        "vimdoc",

        -- web
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "elixir",
        "heex",
        "eex",
        "surface",
        "go",
        "gomod",
        "gosum",
        "sql",
        "python",
        "c_sharp",

        -- config file
        "toml",
        "markdown",

        -- low level
        "c",
        "bash",
        "rust",
      },
    },
  },

  {
    "Decodetalkers/csharpls-extended-lsp.nvim",
  },
}
