return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
    },
    {
        "ggandor/leap.nvim",
        config = function()
            require('leap').add_default_mappings()
            -- Greys the search area
            vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
        end,
    },

    "tpope/vim-repeat",
    {
        'numToStr/Comment.nvim',
        lazy = false,
        config = function()
            require('Comment').setup()
        end
    }

    -- disable flash.nvim until https://github.com/vscode-neovim/vscode-neovim/issues/1349 is fixed
}
