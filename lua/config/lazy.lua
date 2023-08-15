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
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

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

    "tpope/vim-repeat",
    "tpope/vim-commentary",
    "vim-airline/vim-airline"

    -- disable flash.nvim until https://github.com/vscode-neovim/vscode-neovim/issues/1349 is fixed
})
vim.o.background = "dark" -- or "light" for light mode
