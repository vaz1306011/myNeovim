-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

if vim.g.vscode then
  local vscode = require('vscode')
  vim.keymap.set({ "n", "x", "o" }, "<C-/>", function()
      vscode.action("editor.action.commentLine")
  end)
end
-- Normal 模式：移動當前行
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })

-- Visual 模式：移動選取範圍
vim.keymap.set("x", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("x", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Insert 模式（可選）：按住 Alt 也能移動整行
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })
