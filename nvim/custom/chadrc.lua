---@type ChadrcConfig
local M = {}

M.plugins = "custom.plugins" -- path for lazy.nvim
-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

-- M.ui = {
--   theme = "gruvchad",
--   -- hl_add = require("custom.highlights").new_hlgroups,
--   theme_toggle = { "gruvchad", "gruvbox_light" },
--   hl_override = highlights.override,
-- }

M.ui = {
  theme = "one_light",
  theme_toggle = { "onedark", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
