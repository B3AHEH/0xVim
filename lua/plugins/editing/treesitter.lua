return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ nvim-treesitter                                          │
  -- │ code highlighting                                        │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "p00f/nvim-ts-rainbow",
      "hiphish/rainbow-delimiters.nvim",
    },
    build = ":TSUpdate",
    config = function()
      require "config.editing.treesitter"
    end,
  },

  {
    "p00f/nvim-ts-rainbow",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
}
