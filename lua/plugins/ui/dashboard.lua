return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ dashboard-nvim                                           │
  -- │ start screen with shortcuts & logo                       │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "nvimdev/dashboard-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VimEnter",
    config = function()
      require "config.ui.dashboard"
    end,
  },
}
