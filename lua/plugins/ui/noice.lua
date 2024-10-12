return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ noice && nvim-notify                                     │
  -- │ messages, cmdline and the popupmenu                      │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    event = "VeryLazy",
    enabled = not vim.g.started_by_firenvim,
    config = function()
      require "config.ui.noice"
    end,
  },

  -- {
  --     "rcarriga/nvim-notify",
  --     opts = {
  --         timeout = 5000,
  --     },
  -- },
}
