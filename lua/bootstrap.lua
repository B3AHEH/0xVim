-- ╔══════════════════════════════════════════════════════════════╗
--   File: bootstrap.lua
--   This is a bootstrap file
-- ╚══════════════════════════════════════════════════════════════╝

-- bootstrap lazy
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- load plugins
require("lazy").setup {
  { import = "plugins" },
}

-- seting colorscheme
vim.cmd("colorscheme catppuccin")
