local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = " "

require("lazy").setup({
    {
        "folke/which-key.nvim",
        enabled = false,
        event = "VeryLazy",
        -- init = function()
        --     vim.o.timeout = true
        --     vim.o.timeoutlen = 300
        -- end
    },
    {
        "ggandor/leap.nvim",
        config = function()
            require('leap').add_default_mappings()
            -- Greys the search area
            vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
        end,
    },
    "tpope/vim-commentary",
    "tpope/vim-repeat",
    {

        "nvim-lualine/lualine.nvim",
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'iceberg_dark'
                }
            })
        end,
        cond = not vim.g.vscode
    }

    -- disable flash.nvim until https://github.com/vscode-neovim/vscode-neovim/issues/1349 is fixed
})
vim.opt.mouse = "a"           -- Enable mouse mode
vim.opt.number = true         -- Print line number
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.background = "dark"
