return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ nvim-dap                                                 │
  -- │ debugging                                                │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      require "config.debugging.dap"
    end,
  },
}
