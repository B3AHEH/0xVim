-- ╔══════════════════════════════════════════════════════════════╗
--   File: config/debugging/adapters/lldb.lua
--   Configuration for lldb adapter
-- ╚══════════════════════════════════════════════════════════════╝

local M = {}

M.adapter = {
  type = "server",
  port = "${port}",
  executable = {
    command = vim.fn.expand("$HOME") .. "/.local/share/nvim/mason/bin/codelldb",
        args = { "--port", "${port}" },
  },
  name = "lldb",
}

M.config = {
  {
    name = "Launch file",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = function()
      local argument_string = vim.fn.input "Program arguments: "
      return vim.fn.split(argument_string, " ", true)
    end,
  },
}

return M
