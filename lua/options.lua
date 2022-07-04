local options = {
	-- utf8
	encoding = "UTF-8",
	fileencoding = "utf-8",
	-- 上下移动光标保留8行
	scrolloff = 8,
	sidescrolloff = 8,
	-- 相对行号
	number = true,
	relativenumber = true,
	-- 高亮当前行
	cursorline = true,
	-- 显示左侧图标指示列
	signcolumn = "yes",
	-- 缩进
	tabstop = 4,
	softtabstop = 4,
	shiftround = true,
	-- 移动长度
	shiftwidth = 4,
	-- 新行对齐当前行，空格替代tab
	expandtab = false,
	autoindent = true,
	smartindent = true,
	-- 搜索大小写不敏感，除非包含大写
	ignorecase = true,
	smartcase = true,
	-- 搜索不要高亮
	hlsearch = false,
	-- 边输入边搜索
	incsearch = true,
	-- 使用增强状态栏后不再需要 vim 的模式提示
	showmode = false,
	-- 命令行高为2，提供足够的显示空间
	cmdheight = 1,
	-- 当文件被外部程序修改时，自动加载
	autoread = true,
	-- 禁止折行
	wrap = false,
	-- 行结尾可以跳到下一行
	whichwrap = "b,s,<,>,[,],h,l",
	-- 允许隐藏被修改过的buffer
	hidden = true,
	-- 鼠标支持
	mouse = "a",
	-- 禁止创建备份文件
	backup = false,
	writebackup = false,
	swapfile = false,
	-- smaller updatetime
	updatetime = 300,
	-- 等待mappings
	timeoutlen = 500,
	-- split window 从下边和右边出现
	splitbelow = true,
	splitright = true,
	-- 自动补全不自动选中
	completeopt = "menu,menuone,noselect,noinsert",
	-- 样式
	syntax = "enable",
	background = "dark",
	termguicolors = true,
    -- 不可见字符的显示，这里只把空格显示为一个点
	list = false,
	-- listchars = "space:·",
	-- 补全增强
	wildmenu = true,
	-- pop up menu height
	pumheight = 10,
	-- always show tabline
	showtabline = 2,
}

vim.opt.shortmess:append("c")

for k, v in pairs(options) do
	vim.opt[k] = v
end


-- Theme
-- local colorscheme = "solarized"
local colorscheme = "NeoSolarized"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme: " .. colorscheme .. " 没有找到！")
  return
end
-- Theme


vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])
