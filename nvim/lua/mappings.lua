require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>lf", vim.diagnostic.open_float, { desc = "Floating LSP diagnostic" })
map("n", "<leader>tt", require("base46").toggle_transparency, { desc = "Toggle transparency" })
-- augment code
map("n", "<leader>ac", "<cmd>Augment chat<cr>", { desc = "Augment code chat" })
map("n", "<leader>an", "<cmd>Augment chat-new<cr>", { desc = "Augment code chat new" })
-- map("i", "<cr>", "<cmd>call augment#Accept('\n')<cr>", { desc = "Accept augment code chat"})
vim.api.nvim_set_keymap("i", "<c-y>", "<cmd>call augment#Accept()<cr>", { noremap = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
