return {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ git-worktree                                             │
  -- │ simple tool for worktree operations                      │
  -- ╰──────────────────────────────────────────────────────────╯
  {
    "ThePrimeagen/git-worktree.nvim",
    lazy = false,
    config = function()
      require "config.git.git-worktree"
    end,
    opts = {
      change_directory_command = "cd", -- default: "cd",
      update_on_change = true, -- default: true,
      update_on_change_command = "e .", -- default: "e .",
      clearjumps_on_change = true, -- default: true,
      autopush = false, -- default: false,
    },
  },
}
