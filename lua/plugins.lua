local fn = vim.fn


-- 自动安装 packer 插件管理器
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end


-- 当 plugins.lua 保存时自动加载并更新插件
-- vim.cmd([[
--  augroup packer_user_config
--    autocmd!
--    autocmd BufWritePost plugins.lua source <afile> | PackerSync
--  augroup end
--]])


-- 检查packer.nvim状态
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	print("没有安装 packer.nvim")
	return
end

-- 插件安装
packer.startup({
	function(use)
		use("wbthomason/packer.nvim")

        -------------------------- plugins --------------------------

		-- ==LSP==
		use("williamboman/nvim-lsp-installer")
		use("neovim/nvim-lspconfig")
		
		-- ==CMP==
		use("hrsh7th/cmp-nvim-lsp")
        use("hrsh7th/cmp-buffer")
        use("hrsh7th/cmp-path")
        use("hrsh7th/cmp-cmdline")
        use("hrsh7th/nvim-cmp")

		-- ==SNIPPETS==
		use("saadparwaiz1/cmp_luasnip")
        use("L3MON4D3/LuaSnip")
		use("rafamadriz/friendly-snippets")
		

		-- lualine
		use("nvim-lualine/lualine.nvim")

		-- git
		use {
			'lewis6991/gitsigns.nvim',
			config = function()
			require('gitsigns').setup()
			end
		}


        -------------------------- plugins --------------------------

		if PACKER_BOOTSTRAP then
			require("packer").sync()
		end
	end,
})
