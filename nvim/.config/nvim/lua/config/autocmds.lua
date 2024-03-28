-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local autocmd = vim.api.nvim_create_autocmd

-- Clear trailing white space and empty lines at EOF
autocmd("BufWritePre", {
  callback = function()
    -- local cursor = vim.api.nvim_win_get_cursor(0)
    vim.cmd([[%s/\s\+$//e]])
    -- vim.cmd([[silent %!cat -s]])  -- Cleans up >1 consecutive empty lines into a single empty line
    -- vim.api.nvim_win_set_cursor(0, cursor)
  end,
  pattern = "*",
})
