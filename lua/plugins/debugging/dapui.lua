return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ nvim-dap-ui                                              │
  -- │ ui for debugging                                         │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "nvim-neotest/nvim-nio" },
    requires = { "mfussenegger/nvim-dap" },
    config = function()
      require "config.debugging.dapui"
    end,
  },
}
