return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ conform                                                  │
  -- │ formatting tool                                          │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "config.editing.conform"
    end,
  },
}
