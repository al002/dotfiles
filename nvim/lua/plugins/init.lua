return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
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
        "elixir-ls",

        -- rust
        "rust-analyzer",

        -- c/cpp stuff
        "clangd",
        "clang-format",

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
}
