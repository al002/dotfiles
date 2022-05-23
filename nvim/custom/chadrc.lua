-- Just an example, supposed to be placed in /lua/custom/

local M = {}

local override = require("custom.plugins.override")
local userPlugins = require("custom.plugins")

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.plugins = {
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },

    statusline = {
      separator_style = "round",
    },
  },

  override = {
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    ["nvim-telescope/telescope.nvim"] = override.telescope,
  },

  user = userPlugins,
}

M.options = {
  user = function()
    require "custom.options"
  end,
}

M.ui = {
   theme = "gruvchad",
}

M.mappings = require "custom.mappings"

return M
