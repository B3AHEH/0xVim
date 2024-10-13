return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ gitlinker                                                │
  -- │ tool for generating shareable file permalinks            │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "linrongbin16/gitlinker.nvim",
    config = function()
      require("gitlinker").setup()
    end,
    cmd = "GitLink",
  },
}
