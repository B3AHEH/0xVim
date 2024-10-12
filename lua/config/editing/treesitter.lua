require("nvim-treesitter").setup {
  auto_install = true,
  ensure_installed = { "lua", "cpp", "python", "javascript" },
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
