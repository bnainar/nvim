return {
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        cond = not vim.g.vscode,
        priority = 1000,
    },
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            vim.cmd("colorscheme carbonfox")
            local custom = require 'lualine.themes.auto'
            custom.normal.c.bg = '#161616'

            require('lualine').setup {
                options = { theme = custom },
            }
        end,
        cond = not vim.g.vscode,
        lazy = false
    }
}
