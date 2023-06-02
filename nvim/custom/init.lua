require "custom.commands"
require "custom.autocmds"

vim.opt.title = true

vim.filetype.add {
  filename = {
    [".mkshrc"] = "sh",
  },
}

-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
