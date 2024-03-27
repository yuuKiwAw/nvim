return ({
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    config = function ()
        require('mason-tool-installer').setup {
            ensure_installed = {
              'clang-format',
              'prettierd',
              'stylua',
            },
            auto_update = false,
            run_on_start = true,
            start_delay = 3000, -- 3 second delay
            debounce_hours = 5, -- at least 5 hours between attempts to install/update
        }
    end
})
