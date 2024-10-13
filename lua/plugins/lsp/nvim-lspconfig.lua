return {
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
}