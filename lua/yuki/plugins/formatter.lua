-- Utilities for creating configurations
local util = require("yuki.plugins.formatter.util")

return {
	"mhartington/formatter.nvim",
	config = function()
		-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
		require("formatter").setup({
			filetype = {
				lua = {
					function()
						return {
							exe = "stylua",
							args = {
								"--search-parent-directories",
								"--stdin-filepath",
								util.escape_path(util.get_current_buffer_file_path()),
								"--",
								"-",
							},
							stdin = true,
						}
					end,
				},
				cpp = {
					function()
						return {
							exe = "clang-format",
							args = {
								"-assume-filename",
								util.escape_path(util.get_current_buffer_file_name()),
							},
							stdin = true,
							try_node_modules = true,
						}
					end,
				},
			},
		})
		vim.keymap.set("n", "<space>f", "<cmd>Format<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<space>F", "<cmd>FormatWrite<CR>", { noremap = true, silent = true })
	end,
}
