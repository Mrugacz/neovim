return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.opt.background = "dark" -- default to dark or light style
        vim.cmd.colorscheme("carbonfox")
    end,
}
