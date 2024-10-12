return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ lualine                                                  │
  -- │ statusline                                               │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
    config = function()
      require "config.ui.lualine"
    end,
  },
}
