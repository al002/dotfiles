-- overriding default plugin configs!

local M = {}

M.treesitter = {
   ensure_installed = {
      "vim",
      "html",
      "css",
      "javascript",
      "json",
      "toml",
      "typescript",
      "markdown",
      "c",
      "bash",
      "lua",
      "norg",
   },
}

M.nvimtree = {
  update_cwd = false,
  update_focused_file = {
    enable = false,
    update_cwd = false,
    ignore_list = {},
  },
  view = {
    width = 36,
  },
  git = {
    enable = true,
  },
}

M.nvterm = {
  terminals = {
    type_opts = {
      horizontal = {
        split_ratio = .2,
      },
      vertical = {
        split_ratio = 0.3,
      },
    },
  },
}

M.telescope = {
   extensions = {
      -- fd is needed
      media_files = {
         filetypes = { "png", "webp", "jpg", "jpeg" },
      },
   },
}

M.gitsigns = {
  current_line_blame = true,
}

return M
