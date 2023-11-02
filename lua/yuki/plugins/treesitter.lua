return ({
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "c",
                "cpp",
                "cmake",
                "lua",
                "json",
                "python",
                "html",
                "css",
                "javascript",
                "typescript",
                "json",
                "yaml",
            },
            highlight = {
                enable = true,
            },
            auto_install = true,
        })
    end
})
