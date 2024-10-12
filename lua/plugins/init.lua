return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ mason                                                    │
  -- │ package manager for LSP, DAP, linters, formatters        │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ nvim-lspconfig                                           │
  -- │ official neovim language server protocol client          │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "config.lsp"
    end,
  },
  { import = "plugins.editing" },
  { import = "plugins.ui" },
  { import = "plugins.ui.themes" },
}
