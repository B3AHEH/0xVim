return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ diffview                                                 │
  -- │ ui for cycling through diffs                             │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "sindrets/diffview.nvim",
    lazy = true,
    enabled = true,
    event = "BufRead",
    config = function()
      require "config.git.diffview"
    end,
    keys = {
      { "<Leader>gd", "<cmd>lua require('config.git.diffview').toggle_file_history()<CR>", desc = "diff file" },
      { "<Leader>gS", "<cmd>lua require('config.git.diffview').toggle_status()<CR>", desc = "status" },
    },
  },
}
