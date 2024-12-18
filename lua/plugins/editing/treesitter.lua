return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ nvim-treesitter                                          │
  -- │ code highlighting                                        │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "hiphish/rainbow-delimiters.nvim",
    },
    build = ":TSUpdate",
    config = function()
      require "config.editing.treesitter"
    end,
  },
}
