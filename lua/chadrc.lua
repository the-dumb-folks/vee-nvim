-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
theme = 'catppuccin',
  transparency = false,
  statusline = {
    theme = "vscode_colored"
  },
	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
}


vim.filetype.add({
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

vim.cmd "autocmd CursorMoved * normal! zz"

-- Define the Lua function
local function center_cursor()
  local pos = vim.fn.getpos(".")
  vim.cmd("normal! zz")
  vim.fn.setpos(".", pos)
end

-- Create the autocmd using Lua
vim.api.nvim_create_autocmd("CursorMovedI", {
  pattern = "*",
  callback = center_cursor
})

vim.wo.relativenumber = true
-- vim.opt.scrolloff = 999
if vim.g.neovide then
  vim.o.guifont = "Cascadia Code:h14" -- text below applies for VimScript
  vim.g.neovide_transparency = 0.8
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_cursor_animation_length = 0.13
  vim.g.neovide_cursor_trail_size = 0.8
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
end

M.mason = { cmd = true, pkgs = {
        "debugpy",
        "black",
        "pyright",
        "mypy",
        "ruff",
}
}


M.plugins = "custom/plugins"
M.mappings = require "custom.mappings"


return M
