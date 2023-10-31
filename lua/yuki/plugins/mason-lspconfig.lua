return({
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup{
            ensure_installed = {
                "lua_ls",
                "clangd",
                "cmake",
                "pyright",
            },
            automatic_installation = true,
        }
    end,
})
