-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
local vscode = require('vscode')

if vim.g.vscode then
  vim.keymap.set({ "n", "x", "o" }, "<C-/>", function()
      vscode.action("editor.action.commentLine")
  end)
end