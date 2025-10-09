-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Move selected code block down with Option+j (which sends √)
vim.keymap.set("v", "√", ":m '>+1<CR>gv=gv")

-- Move selected code block up with Option+k (which sends ª)
vim.keymap.set("v", "ª", ":m '<-2<CR>gv=gv")
