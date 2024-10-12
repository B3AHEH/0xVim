-- ╔══════════════════════════════════════════════════════════════╗
--   File: config/ui/dashboard.lua
--   Configuration for dashboard
-- ╚══════════════════════════════════════════════════════════════╝

local icons = _0xVim_.icons
local v = vim.version()
local _0xVim_version = _0xVim_.version
local plugins = require("lazy").stats().count
local footer_string = string.format(
    "%s v%d.%d.%d %s %d %s %s",
    icons.vim,
    v.major, v.minor, v.patch,
    icons.cog,
    plugins,
    icons.info,
    _0xVim_version
)

require("dashboard").setup {
    theme = "doom",
    disable_move = true,
    config = {
        header = {
            "",           
            "",                                                             
            "",
            "",           
            "",                                                             
            "",                                                                     
            "     .oooooo.               oooooo     oooo  o8o                        ",
            "    d8P'  `Y8b               `888.     .8'   `\"'                       ",
            "   888      888 oooo    ooo   `888.   .8'   oooo  ooo. .oo.  .oo.      ",
            "   888      888  `88b..8P'     `888. .8'    `888  `888P\"Y88bP\"Y88b     ",
            "   888      888    Y888'        `888.8'      888   888   888   888     ",
            "   `88b    d88'  .o8\"'88b        `888'       888   888   888   888     ",
            "    `Y8bood8P'  o88'   888o       `8'       o888o o888o o888o o888o    ",
            "",                                                             
            ""
        },
        
        center = {
            {
                icon = icons.search_sp,
                icon_hl = "group",
                desc = "Find File                                   ",
                desc_hl = "group",
                key = "f",
                key_hl = "Title",
                key_format = " %s",
                action = "Telescope find_files",
            },
            {
                icon = icons.search_sp,
                icon_hl = "group",
                desc = "Find Word",
                desc_hl = "group",
                key = "w",
                key_hl = "Title",
                key_format = " %s",
                action = "",
            },
            {
                icon = icons.fire_sp,
                icon_hl = "group",
                desc = "Recents",
                desc_hl = "group",
                key = "h",
                key_hl = "Title",
                key_format = " %s",
                action = "",
            },
            {
                icon = icons.light_sp,
                icon_hl = "group",
                desc = "Load Last Session",
                desc_hl = "group",
                key = "l",
                key_hl = "Title",
                key_format = " %s",
                action = "",
            },
            {
                icon = icons.wrench_sp,
                icon_hl = "group",
                desc = "Manage Plugins",
                desc_hl = "group",
                key = "p",
                key_hl = "Title",
                key_format = " %s",
                action = "Lazy",
            },
            {
                icon = icons.forbidden_sp,
                icon_hl = "group",
                desc = "Update 0xVim",
                desc_hl = "group",
                key = "u",
                key_hl = "Title",
                key_format = " %s",
                action = "",
            },
            {
                icon = icons.exit_sp,
                icon_hl = "group",
                desc = "Exit",
                desc_hl = "group",
                key = "<Esc>",
                key_hl = "Title",
                key_format = " %s",
                action = "exit",
            },
        },
        footer = { footer_string },
    },
}