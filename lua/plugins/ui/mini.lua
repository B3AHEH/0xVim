return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ mini                                                     │
  -- │ animates common actions                                  │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },
}
