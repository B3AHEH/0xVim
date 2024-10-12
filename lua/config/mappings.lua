-- ╔══════════════════════════════════════════════════════════════╗
--   File: config/mappings.lua
--   This is a file for key mappings configuration in Neovim.
-- ╚══════════════════════════════════════════════════════════════╝

local wk = require "which-key"
local map = vim.keymap.set
local builtin = require "telescope.builtin"
local term = require "utils.term"

local icons = _0xVim_.icons

wk.add {
  { "<leader>d", group = icons.debug .. " Debug" },
  { "<leader>p", group = icons.database .. " Database" },
  { "<leader>w", group = icons.buffer .. " Buffer Actions" },
  { "<leader>f", group = icons.search .. " Search" },
  { "<leader>s", group = icons.window .. " Split" },
  { "<leader>m", group = icons.markdown .. " Markdown" },
  { "<leader>t", group = icons.terminal .. " Terminals" },
  { "<leader>c", group = icons.code .. " LSP", mode = { "n", "v" } },
}

-- ╭──────────────────────────────────────────────────────────╮
-- │ general                                                  │
-- ╰──────────────────────────────────────────────────────────╯
map("i", "jk", "<ESC>", { silent = true })
map("n", "H", "^", { desc = "Move to the beginning of the line", silent = true })
map("n", "L", "g_", { desc = "Move to the end of the line", silent = true })

map("n", "<Leader>e", ":NvimTreeToggle<CR>", { desc = icons.toggle .. "Toggle NvimTree", silent = true })
map("n", "<Leader>ww", ":w<CR>", { desc = icons.save .. " Save current buffer", silent = true })
map("n", "<Leader>wa", ":wa<CR>", { desc = icons.save .. " Save all buffers", silent = true })
map("n", "<Leader>wq", ":wq<CR>", { desc = icons.save .. " Save and quit", silent = true })
map("n", "<Leader>q", ":q<CR>", { desc = icons.exit .. " Quit current window", silent = true })
map("n", "<Leader>n", ":set number!<CR>", { desc = icons.toggle .. "Toggle line numbers", silent = true })
map("t", "jk", "<C-\\><C-n>", { desc = icons.exit .. "Exit terminal insert mode", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ splits                                                   │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<Leader>sh", ":split<CR>", { desc = icons.hsplit .. " Split window horizontally", silent = true })
map("n", "<Leader>sv", ":vsplit<CR>", { desc = icons.vsplit .. " Split window vertically", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ terminals                                                │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<Leader>tf", ':lua require("utils.term").floating_terminal()<CR>', { noremap = true, silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ tabs                                                     │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = icons.caretRight .. " Next buffer", silent = true })
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = icons.caretLeft .. " Previous buffer", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ window navigation                                        │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window", silent = true })
map("n", "<C-j>", "<C-w>j", { desc = "Move to below window", silent = true })
map("n", "<C-k>", "<C-w>k", { desc = "Move to above window", silent = true })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ search & replace                                         │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<Leader>fh", ":nohlsearch<CR>", { desc = icons.trash .. " Clear search highlight", silent = true })
map("n", "<Leader>r", ":%s//g<Left><Left>", { desc = icons.replace .. " Replace in file", silent = false })

-- ╭──────────────────────────────────────────────────────────╮
-- │ indenting                                                │
-- ╰──────────────────────────────────────────────────────────╯
map("v", "<", "<gv", { desc = "Indent left and reselect", silent = true })
map("v", ">", ">gv", { desc = "Indent right and reselect", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ telescope                                                │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<Leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", { desc = "Find files" })
map("n", "<Leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", { desc = "Live grep" })
map("n", "<Leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", { desc = "Find buffers" })
map("n", "<Leader>fe", "<cmd>lua require('telescope.builtin').help_tags()<CR>", { desc = "Find help tags" })
map("n", "<Leader>fr", "<cmd>lua require('telescope.builtin').oldfiles()<CR>", { desc = "Find recent files" })
map("n", "<Leader>fc", "<cmd>lua require('telescope.builtin').git_commits()<CR>", { desc = "Find git commits" })

-- ╭──────────────────────────────────────────────────────────╮
-- │ clangd                                                   │
-- ╰──────────────────────────────────────────────────────────╯
map(
  "n",
  "<Leader>ch",
  ":ClangdSwitchSourceHeader<CR>",
  { desc = icons.cpp .. " Switch between header and source file", silent = true }
)

-- ╭──────────────────────────────────────────────────────────╮
-- │ nvim DAP                                                 │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into", silent = true })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over", silent = true })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out", silent = true })
map("n", "<Leader>d<space>", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue", silent = true })
map(
  "n",
  "<Leader>db",
  "<cmd>lua require'dap'.toggle_breakpoint()<CR>",
  { desc = "Debugger toggle breakpoint", silent = true }
)
map(
  "n",
  "<Leader>dd",
  "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
  { desc = "Debugger set conditional breakpoint", silent = true }
)
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset", silent = true })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ dbee                                                     │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<Leader>pd", "<cmd>DBOpen<CR>", { desc = icons.database .. " Open DB connection", silent = true })
map("n", "<Leader>pq", "<cmd>DBClose<CR>", { desc = icons.database .. " Close DB connection", silent = true })
map("n", "<Leader>pr", "<cmd>DBRunQuery<CR>", { desc = icons.database .. " Run DB query", silent = true })
map("n", "<Leader>ph", "<cmd>DBHistory<CR>", { desc = icons.database .. " Show query history", silent = true })

map("n", "<leader>mp", ":MarkdownPreviewToggle<CR>", { desc = icons.toggle .. "Markdown preview", silent = true })

map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "LSP go to defeinition", silent = true })
map(
  "n",
  "gr",
  "<cmd>lua vim.lsp.buf.references({ includeDeclaration = false })<CR>",
  { desc = "LSP references", silent = true }
)
map("n", "gy", "<cmd>lua vim.lsp.buf.type_definition()<CR>", { desc = "LSP show type defenition", silent = true })
map("n", "<C-Space>", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "LSP code action", silent = true })
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "LSP code action", silent = true })
map("v", "<leader>ca", "<cmd>'<,'>lua vim.lsp.buf.code_action()<CR>", { desc = "LSP code action", silent = true })
map(
  "n",
  "<leader>cl",
  "<cmd>lua vim.diagnostic.open_float({ border = 'rounded', max_width = 100 })<CR>",
  { desc = "LSP diagnostics", silent = true }
)
map(
  "n",
  "gl",
  "<cmd>lua vim.diagnostic.open_float({ border = 'rounded', max_width = 100 })<CR>",
  { desc = "LSP diagnostics", silent = true }
)
