-- ╔══════════════════════════════════════════════════════════════╗
--   File: config/ui/telescope.lua
--   Configuration for telescope
-- ╚══════════════════════════════════════════════════════════════╝

local icons = _0xVim_.icons

require('telescope').setup {
    defaults = {
        prompt_prefix = icons.telescope,
        selection_caret = icons.arrowReturn,
        path_display = { "smart" },
    },
}