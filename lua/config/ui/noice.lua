-- ╔══════════════════════════════════════════════════════════════╗
--   File: config/ui/noice.lua
--   Configuration for noice
-- ╚══════════════════════════════════════════════════════════════╝

require("noice").setup {
  lsp = {
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  messages = {
    view_search = false,
  },
  presets = {
    bottom_search = true,
    command_palette = true,
    long_message_to_split = true,
    lsp_doc_border = true,
  },
}
