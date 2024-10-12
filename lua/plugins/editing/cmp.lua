return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ nvim-cmp                                                 │
  -- │ autocompletion                                           │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "onsails/lspkind-nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
    },
    config = function()
      require "config.editing.cmp"
    end,
  },
}
