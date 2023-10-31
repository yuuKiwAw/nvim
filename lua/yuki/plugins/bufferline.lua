return ({
    'akinsho/bufferline.nvim', version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup({
            options = {
                mode = 'buffers',
                offsets = {
                    { filetype = 'NvimTree' }
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
    end
})
