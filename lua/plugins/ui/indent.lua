return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ indent-blankline                                         │
  -- │ indent highlighting                                      │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPre",
    main = "ibl",
    config = function()
      vim.opt.list = true
      require("ibl").setup {
        exclude = {
          filetypes = { "help", "dashboard", "packer", "NvimTree", "Trouble", "TelescopePrompt", "Float" },
          buftypes = { "terminal", "nofile", "telescope" },
        },
        indent = {
          char = "│",
        },
        scope = {
          enabled = true,
          show_start = false,
        },
      }
    end,
  },
}
