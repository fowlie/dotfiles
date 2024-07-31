-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local zen_mode = require("zen-mode")

vim.keymap.set("n", "<leader>uz", zen_mode.toggle, { desc = "Toggle zen mode" })
vim.keymap.set("n", "<leader>ub", "<cmd>GitBlameToggle<CR>", { desc = "Toggle git blame" })

-- Navigate between windows Colemak style
vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")
vim.keymap.set("n", "<C-left>", "<C-w>h", { desc = "Go to Left Window" })
vim.keymap.set("n", "<C-down>", "<C-w>j", { desc = "Go to Lower Window" })
vim.keymap.set("n", "<C-up>", "<C-w>k", { desc = "Go to Upper Window" })
vim.keymap.set("n", "<C-right>", "<C-w>l", { desc = "Go to Right Window" })
