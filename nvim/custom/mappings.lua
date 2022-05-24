local M = {}

M.truzen = {
   n = {
    ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "   truzen ataraxis" },
    ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "   truzen minimal" },
    ["<leader>tf"] = { "<cmd> TZFocus <CR>", "   truzen focus" },
   },
}

M.telescope = {
   n = {
    ["<leader>fp"] = { "<cmd> Telescope media_files <CR>", "  find media" },
   },
}

M.gitsigns = {
  n = {
    ["<leader>lb"] = { "<cmd> Gitsigns toggle_current_line_blame <CR>", "toggle current line blame"},
  },
}

M.glow = {
  n = {
    ["<leader>mp"] = { "<cmd> Glow <CR>", "preview markdown file" }
  },
}

return M

