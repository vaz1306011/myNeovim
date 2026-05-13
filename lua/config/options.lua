-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
if vim.g.vscode then
  vim.opt.cmdheight = 1

  vim.opt.shortmess:append({
    s = true,
    I = true,
    W = true,
    c = true,
    C = true,
    q = true,
    S = true,
  })

  vim.opt.report = 9999
end
