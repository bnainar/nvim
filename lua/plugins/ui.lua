return {
    {
        "stevearc/dressing.nvim",
        cond = not vim.g.vscode,
    },
    {
        "rcarriga/nvim-notify",
        cond = not vim.g.vscode,
        config = function()
            vim.notify = require("notify")
            require("notify")("Hello World")
        end
    },
}
