-- ╔══════════════════════════════════════════════════════════════╗
--   File: term.lua
--   Utility functions for terminal handling in Neovim.
-- ╚══════════════════════════════════════════════════════════════╝

local M = {}

function M.floating_terminal()
  local buf = vim.api.nvim_create_buf(false, true)
  local width = math.ceil(vim.o.columns * 0.6)
  local height = math.ceil(vim.o.lines * 0.6)
  local row = math.ceil((vim.o.lines - height) / 2)
  local col = math.ceil((vim.o.columns - width) / 2)

  vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    row = row,
    col = col,
    width = width,
    height = height,
    style = "minimal",
    border = "single",
  })

  vim.fn.termopen "zsh"

  vim.bo[buf].buftype = "terminal"
  vim.bo[buf].bufhidden = "hide"
  vim.bo[buf].modifiable = false

  vim.cmd "startinsert"
end

return M
