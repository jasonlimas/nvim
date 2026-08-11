-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Autoformatting
vim.g.autoformat = false

-- Hide tabs, spaces, non-breakable spaces visualizations
vim.opt.list = false

-- Sets the minimum number of lines and columns around the cursor
vim.o.scrolloff = 10
vim.opt.sidescrolloff = 18

-- Disable Snacks animations
vim.g.snacks_animate = false

-- Disable AI source as completion engine
vim.g.ai_cmp = false

-- Disable smooth scrolling
vim.opt.smoothscroll = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- vim.opt.softtabstop = 4
-- vim.opt.expandtab = true
-- vim.opt.smartindent = true
-- vim.g.autoformat = false

-- vim.opt.tabstop = 4 -- A tab character is displayed as 4 spaces
-- vim.opt.shiftwidth = 4 -- >>, <<, and auto-indent use 4 spaces
-- vim.opt.softtabstop = 4 -- Tab/Backspace in Insert mode use 4 spaces
-- vim.opt.expandtab = true -- Insert spaces instead of actual tab characters
