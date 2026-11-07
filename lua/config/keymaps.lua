-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "+", "<C-a>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- JJ escape
keymap.set("i", "jj", "<ESC>", opts)

-- Split Window
keymap.set("n", "\\", ":split<Return>", opts)
keymap.set("n", "|", ":vsplit<Return>", opts)

-- Move Window
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- Move cursor
keymap.set("i", "<C-h>", "<Left>", opts)
keymap.set("i", "<C-j>", "<Down>", opts)
keymap.set("i", "<C-k>", "<Up>", opts)
keymap.set("i", "<C-l>", "<Right>", opts)

-- Chanhe Tab
keymap.set("n", "gt", "<cmd>bnext<CR>", opts)
keymap.set("n", "gT", "<cmd>bprevious<CR>", opts)

-- Change Line Number, Absolute or Relative
keymap.set("n", "<Leader>n", function()
  local isRelative = vim.wo.relativenumber
  vim.wo.relativenumber = not isRelative
end, opts)
