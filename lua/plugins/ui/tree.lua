return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ nvim-tree                                                │
  -- │ file explorer                                            │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require "config.ui.tree"
    end,
  },
}
