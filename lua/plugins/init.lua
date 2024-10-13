return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ mason                                                    │
  -- │ package manager for LSP, DAP, linters, formatters        │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
    opts = {},
  },
  { import = "plugins.lsp" },
  { import = "plugins.editing" },
  { import = "plugins.debugging" },
  { import = "plugins.ui" },
  { import = "plugins.ui.themes" },
  { import = "plugins.git" },
}
