local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "html",
    "css",
    "javascript",
    "json",
    "toml",
    "markdown",
    "c",
    "bash",
    "lua",
    "norg",
    "tsx",
    "typescript",
    "rust",
    "elixir",
    "heex",
    "surface",
  },
  -- indent = {
  --   enable = true,
  --   -- disable = {
  --   --   "python"
  --   -- },
  -- },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "tailwindcss-language-server",
    "deno",
    "emmet-ls",
    "prettier",
    "json-lsp",

    -- rust
    "rust-analyzer",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- shell
    "shfmt",
    "shellcheck",
    "bash-language-server",

    -- elixir
    "elixir-ls"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
