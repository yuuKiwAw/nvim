local opts = { noremap = true, silent = true }

-- 本地变量
local map = vim.api.nvim_set_keymap

-- leader key 为空
--Remap space as leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- ==KeyBindings
-- [Alt + m] nvim-tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opts)

-- telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
map("n", "<leader>/", ":Telescope current_buffer_fuzzy_find<CR>", opts)
