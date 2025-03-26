-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "tokyonight",
  transparency = true,
  statusline = {
  theme = "minimal",
  separator_style = "round",
  overriden_modules = nil,
  },
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}
M.base64 = {
  theme = "tokyonight",
  integrations = {
    "blankline",
    "cmp",
    "git",
  }
}
M.plugins = "plugins"
---@class M.mappings = require "configs.mappings"
return M
