-- ╔══════════════════════════════════════════════════════════════╗
--   File: config/editing/conform.lua
--   Configuration for conform
-- ╚══════════════════════════════════════════════════════════════╝

require("conform").setup {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    graphql = { "prettier" },
    cpp = { "clang-format" },
    c = { "clang-format" },
  },

  -- format_on_save = {
  -- timeout_ms = 500,
  -- lsp_fallback = false,
  -- },
}
