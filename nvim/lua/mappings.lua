require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>lf", vim.diagnostic.open_float, { desc = "Floating LSP diagnostic" })
map("n", "<leader>tt", require("base46").toggle_transparency, { desc = "Toggle transparency" })

-- Show file absolute path
map("n", "<leader>pf", function()
  local path = vim.fn.expand "%:p"
  if path == "" then
    vim.notify("Path not exists", vim.log.levels.WARN)
    return
  end

  vim.notify(path)
end, { desc = "Show file absolute path" })

-- Copy file absolute path
map("n", "<leader>pc", function()
  local path = vim.fn.expand "%:p"
  if path == "" then
    vim.notify("Path not exists", vim.log.levels.WARN)
    return
  end

  vim.fn.setreg("+", path)
  vim.fn.setreg("*", path)
  vim.notify("Path " .. path .. " copied")
end, { desc = "Show file absolute path" })
