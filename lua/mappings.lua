require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i" }, "<C-s>", "<cmd> w <cr>")

map("n", "<Up>", "<Nop>", { noremap = true })
map("n", "<Down>", "<Nop>", { noremap = true })
map("n", "<Left>", "<Nop>", { noremap = true })
map("n", "<Right>", "<Nop>", { noremap = true })

map("v", "<Up>", ":m '<-2<CR>gv=gv")
map("v", "<Down>", ":m '>+1<CR>gv=gv")

local ts_builtin = require "telescope.builtin"
map("n", "<leader>fg", ts_builtin.live_grep, {})
map("n", "<leader>fb", ts_builtin.buffers, {})
