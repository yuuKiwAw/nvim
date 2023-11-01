return ({
    'akinsho/bufferline.nvim', version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup({
            options = {
                -- mode = 'buffers',
                diagnostics = "nvim_lsp",
                offsets = {
                    {
                        filetype = 'NvimTree',
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left"
                    }
                },
            },
            highlights = {
                buffer_selected = {
                    italic = false
                },
                indicator_selected = {
                    fg = { attribute = 'fg', highlight = 'Function' },
                    italic = false
                },
            },
        })

        vim.keymap.set("n", "<leader>h", ":BufferLineCyclePrev<CR>")
        vim.keymap.set("n", "<leader>l", ":BufferLineCycleNext<CR>")
    end
})
