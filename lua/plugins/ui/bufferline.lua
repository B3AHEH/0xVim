return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ nvim-bufferline                                          │
  -- │ tabs like in GUI text editors                            │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "akinsho/nvim-bufferline.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require "config.ui.bufferline"
    end,
  },
}
