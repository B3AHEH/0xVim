-- ╔══════════════════════════════════════════════════════════════╗
--   File: 0xVim.lua
--   This is a main configuations file for 0xVim
-- ╚══════════════════════════════════════════════════════════════╝

local icons = require "utils.icons"

_0xVim_ = {
  version = "v1.0.1",
  colorscheme = "catppuccin",
  icons = icons,
  leader = " ",
  format_on_save = false,
  plugins = {
    tree = {
      quit_on_open = false,
      show_root_path = false,
      diagnostics_hl = true,
      git_hl = true,
      hide_gitignore = false,
    },
  },
}
