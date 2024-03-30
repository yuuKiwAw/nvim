return {
    "stevearc/conform.nvim",
    config = function()
        local conform = require("conform")
        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                html = { { "prettierd", "prettier" } },
                css = { { "prettierd", "prettier" } },
                javascript = { { "prettierd", "prettier" } },
                typescript = { { "prettierd", "prettier" } },
                javascriptreact = { { "prettierd", "prettier" } },
                typescriptreact = { { "prettierd", "prettier" } },
                markdown = { { "prettierd", "prettier" } },
                python = { "isort", "black" },
                h = { { "clang-format" } },
                hh = { { "clang-format" } },
                c = { { "clang-format" } },
                cc = { { "clang-format" } },
                cpp = { { "clang-format" } },
            },
        })
        vim.keymap.set({ "n", "v" }, "<leader>fm", function()
            conform.format({
                lsp_fallback = true,
                async = true,
                timeout_ms = 500,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
