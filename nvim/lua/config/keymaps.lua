-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Vertical split on <leader>v
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { desc = "Vertical Split" })
--
-- Horizontal split on <leader>s
vim.keymap.set("n", "<leader>s", ":split<CR>", { desc = "Horizontal Split" })
 
-- Close current buffer on <leader>q
vim.keymap.set("n", "<leader>q", ":close<CR>", { desc = "Close Window" })
 
-- Jump between windows
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Move to below window" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Move to above window" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move to right window" })



