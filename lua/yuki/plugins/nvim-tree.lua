return ({
    "nvim-tree/nvim-tree.lua",
    config = function()
        vim.keymap.set('n', '<leader>m', '<cmd>NvimTreeToggle<cr>')
        require("nvim-tree").setup({
            sort_by = "case_sensitive",
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = false,
            },
        })
    end
})
