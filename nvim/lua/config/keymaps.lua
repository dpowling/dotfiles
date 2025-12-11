-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

-- Hold Tab and tap l/h repeatedly to cycle tabs
map("n", "<Tab>", "", { desc = "Tab prefix" })
map("n", "<Tab>l", "<cmd>tabnext<cr>", { desc = "Next Tab", noremap = true })
map("n", "<Tab>h", "<cmd>tabprevious<cr>", { desc = "Previous Tab", noremap = true })
