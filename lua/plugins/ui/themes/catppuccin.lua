return {
    -- ╭──────────────────────────────────────────────────────────╮
    -- │ catppuccin theme                                         │
    -- │ catppuccin.com                                           │
    -- ╰──────────────────────────────────────────────────────────╯
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("config.ui.themes.catppuccin")
            vim.cmd("colorscheme catppuccin")
        end,
    },
}