return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ lazygit                                                  │
  -- │ simple ui for git commands                               │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitCurrentFile",
      "LazyGitFilterCurrentFile",
      "LazyGitFilter",
    },
    config = function()
      vim.g.lazygit_floating_window_scaling_factor = 0.95
    end,
  },
}
