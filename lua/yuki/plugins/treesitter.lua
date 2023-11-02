return ({
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "c",
                "cpp",
                "lua",
                "json",
                "python",
            },
            highlight = {
                enable = true,
            },
            auto_install = true,
        })
    end
})
