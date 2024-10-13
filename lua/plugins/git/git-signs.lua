return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ gitsigns                                                 │
  -- │ git integration for buffers                              │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "lewis6991/gitsigns.nvim",
    event = "BufRead",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require "config.git.git-signs"
    end,
  },
}
