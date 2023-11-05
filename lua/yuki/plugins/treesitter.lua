return ({
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "c",
                "cpp",
                "cmake",
                "rust",
                "lua",
                "json",
                "python",
                "html",
                "css",
                "javascript",
                "typescript",
                "tsx",
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
