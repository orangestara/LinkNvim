-- 键位映射

local opt = {noremap = true, silent = true}
local gmap = vim.api.nvim_set_keymap
local bmap = vim.api.nvim_buf_set_keymap

-- 设置 leader 键位空格
gmap("", "<Space>", "<Nop>", opt)
vim.g.mapleader = " "

-- Modes
--  normal_mode = "n"
--  insert_mode = "i"
--  visual_mode = "v"
--  visual_block_mode = "x"
--  term_mode = "t"
--  command_mode = "c"

