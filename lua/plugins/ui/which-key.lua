return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ which-key                                                │
  -- │ shows keybinds by pressing <leader>                      │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require "config.ui.which-key"
    end,
  },
}
