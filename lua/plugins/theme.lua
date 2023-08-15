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
            require('lualine').setup()
        end,
        cond = not vim.g.vscode,
        lazy = false
    }
}
