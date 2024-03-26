local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
vim.api.nvim_create_autocmd("FileType", {
	pattern = "py",
	command = "setlocal shiftwidth=4 tabstop=4"
})

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- table line
opt.showtabline = 2

-- move scrolloff
opt.scrolloff = 8
opt.sidescrolloff = 8

-- colorscheme
-- vim.cmd([[colorscheme habamax]])

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- gui settings
opt.guifont = "ComicShannsMono Nerd Font:h12"
