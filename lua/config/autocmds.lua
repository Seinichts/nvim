-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

if vim.g.neovide then
  vim.cmd([[ cd $HOME ]])
end

-- Disable spell checking for markdown and text files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text", "tex" },
  callback = function()
    vim.opt_local.spell = false
  end,
})
