-- ╔══════════════════════════════════════════════════════════════╗
--   File: config/ui/bufferline.lua
--   Configuration for bufferline
-- ╚══════════════════════════════════════════════════════════════╝

require("bufferline").setup {
  options = {
    -- mode = "tabs",
    numbers = "none",
    diagnostics = "nvim_lsp",
    show_buffer_close_icons = true,
    show_close_icon = false,
    separator_style = {" ", " "},
    hide_terminal_buffers = false,
    offsets = {
      {
        filetype = "NvimTree",
        text = "",
        text_align = "left",
        separator = true,
      },
    },
  },
}
