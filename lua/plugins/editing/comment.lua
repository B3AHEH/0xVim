return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ Comment                                                  │
  -- │ commenting tool                                          │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "numToStr/Comment.nvim",
    opts = {},
    config = function()
      require("Comment").setup()
    end,
  },
}
