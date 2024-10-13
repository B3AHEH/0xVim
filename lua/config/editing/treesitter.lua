-- ╔══════════════════════════════════════════════════════════════╗
--   File: config/editing/treesitter.lua
--   Configuration for treesitter
-- ╚══════════════════════════════════════════════════════════════╝

require("nvim-treesitter.configs").setup {
  auto_install = true,
  ensure_installed = {
    "lua",
    "cpp",
    "python",
    "javascript",
    "typescript",
    "css",
    "tsx",
    "vue",
    "gitcommit",
    "markdown",
    "prisma",
    "json",
    "json5",
    "vim",
    "html",
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      node_decremental = "grm",
      scope_incremental = "grc",
    },
  },
  indent = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = 9999,
  },
}
