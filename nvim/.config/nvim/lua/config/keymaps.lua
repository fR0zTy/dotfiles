-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- NORMAL MODE --
vim.keymap.del("n", "s")
vim.keymap.set("n", "<leader>fc", "<cmd>let @+=@%<cr>", { noremap = true, silent = true, desc = "Yank file path" })
vim.keymap.set("n", "<leader><space>", "<cmd>Telescope buffers<cr>", { desc = "currently open buffers" })
vim.keymap.set("n", "<leader>se", "<cmd>lua vim.lsp.buf.rename()<cr>", { desc = "exchange current word" })

-- INSERT MODE --
vim.keymap.del("i", "<C-w>")
vim.keymap.set("i", "<C-w>", "<ESC>wi", { noremap = true, silent = true, desc = "next word" })
vim.keymap.set("i", "<C-e>", "<ESC>ea", { noremap = true, silent = true, desc = "end of word" })
vim.keymap.set("i", "<C-b>", "<ESC>bi", { noremap = true, silent = true, desc = "beginning of word" })
vim.keymap.set("i", "<C-0>", "<ESC>0i", { noremap = true, silent = true, desc = "beginning of word" })
vim.keymap.set("i", "<C-$>", "<ESC>$a", { noremap = true, silent = true, desc = "beginning of word" })
-- VISUAL MODE --
