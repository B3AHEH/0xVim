return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ telescope                                                │
  -- │ fuzzy finder over lists                                  │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require "config.ui.telescope"
    end,
  },
}
