-- ╔══════════════════════════════════════════════════════════╗
--   File: config/mappings.lua
--   This is a file for key mappings configuration in Neovim.
-- ╚══════════════════════════════════════════════════════════╝

local gs = require "gitsigns"
local wk = require "which-key"
local map = vim.keymap.set

local icons = _0xVim_.icons

wk.add {
  { "<leader>g", group = icons.git .. " Git", mode = { "n", "v" } },
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
map("n", "H", "^", { desc = "Go to start of line", silent = true })
map("n", "L", "g_", { desc = "Go to end of line", silent = true })

map("n", "<Leader>e", ":NvimTreeToggle<CR>", { desc = icons.toggle .. "Toggle NvimTree", silent = true })
map("n", "<Leader>ww", ":w<CR>", { desc = icons.save .. " Save buffer", silent = true })
map("n", "<Leader>wa", ":wa<CR>", { desc = icons.save .. " Save all buffers", silent = true })
map("n", "<Leader>wq", ":wq<CR>", { desc = icons.save .. " Save and quit", silent = true })
map("n", "<Leader>q", ":q<CR>", { desc = icons.exit .. " Quit buffer", silent = true })
map("n", "<Leader>n", ":set number!<CR>", { desc = icons.toggle .. " Toggle line numbers", silent = true })
map("t", "jk", "<C-\\><C-n>", { desc = icons.exit .. " Exit terminal mode", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ windows & splits                                         │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<Leader>sh", ":split<CR>", { desc = icons.hsplit .. " Horizontal split", silent = true })
map("n", "<Leader>sv", ":vsplit<CR>", { desc = icons.vsplit .. " Vertical split", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ terminal                                                 │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<Leader>tf", ':lua require("utils.term").floating_terminal()<CR>', { desc = icons.terminal .. " Floating terminal", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ tabs & buffers                                           │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = icons.caretRight .. " Next buffer", silent = true })
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = icons.caretLeft .. " Previous buffer", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ navigation                                               │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window", silent = true })
map("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window", silent = true })
map("n", "<C-k>", "<C-w>k", { desc = "Move to top window", silent = true })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ refactoring                                              │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<Leader>r", ":%s//g<Left><Left>", { desc = icons.replace .. " Replace in file", silent = false })

-- ╭──────────────────────────────────────────────────────────╮
-- │ indenting                                                │
-- ╰──────────────────────────────────────────────────────────╯
map("v", "<", "<gv", { desc = "Indent left", silent = true })
map("v", ">", ">gv", { desc = "Indent right", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ telescope                                                │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<Leader>fh", ":nohlsearch<CR>", { desc = icons.trash .. " Clear search highlight", silent = true })
map("n", "<Leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", { desc = "Find files", silent = true })
map("n", "<Leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", { desc = "Search text", silent = true })
map("n", "<Leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", { desc = "Find buffers", silent = true })
map("n", "<Leader>fe", "<cmd>lua require('telescope.builtin').help_tags()<CR>", { desc = "Find help tags", silent = true })
map("n", "<Leader>fr", "<cmd>lua require('telescope.builtin').oldfiles()<CR>", { desc = "Find recent files", silent = true })
map("n", "<Leader>fc", "<cmd>lua require('telescope.builtin').git_commits()<CR>", { desc = "Find Git commits", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ clangd                                                   │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<Leader>ch", ":ClangdSwitchSourceHeader<CR>", { desc = icons.cpp .. " Switch between header and source file", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ LSP & code actions                                       │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "LSP go to defeinition", silent = true })
map("n", "gr", "<cmd>lua vim.lsp.buf.references({ includeDeclaration = false })<CR>", { desc = "LSP references", silent = true })
map("n", "gy", "<cmd>lua vim.lsp.buf.type_definition()<CR>", { desc = "LSP show type defenition", silent = true })
map("n", "<C-Space>", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "LSP code action", silent = true })
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "LSP code action", silent = true })
map("v", "<leader>ca", "<cmd>'<,'>lua vim.lsp.buf.code_action()<CR>", { desc = "LSP code action", silent = true })
map("n", "<leader>cl", "<cmd>lua vim.diagnostic.open_float({ border = 'rounded', max_width = 100 })<CR>", { desc = "LSP diagnostics", silent = true })
map("n", "gl", "<cmd>lua vim.diagnostic.open_float({ border = 'rounded', max_width = 100 })<CR>", { desc = "LSP diagnostics", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ debugging                                                │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<Leader>dd", "<cmd>lua require'dapui'.toggle()<CR>", { desc = icons.debug .. " Debugger UI", silent = true })
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = icons.debug .. " Debugger step into", silent = true })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = icons.debug .. " Debugger step over", silent = true })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = icons.debug .. " Debugger step out", silent = true })
map("n", "<Leader>d<space>", "<cmd>lua require'dap'.continue()<CR>", { desc = icons.debug .. " Debugger continue", silent = true })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint", silent = true })
map("n", "<Leader>dc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { desc = "Debugger set conditional breakpoint", silent = true })
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset", silent = true })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ git                                                      │
-- ╰──────────────────────────────────────────────────────────╯
map({ "n", "v" }, "<leader>ghs", gs.stage_hunk, { desc = "Stage hunk" })
map({ "n", "v" }, "<leader>ghr", gs.reset_hunk, { desc = "Reset hunk" })
map("n", "<leader>ghS", gs.stage_buffer, { desc = "Stage buffer" })
map("n", "<leader>ghu", gs.undo_stage_hunk, { desc = "Undo stage hunk" })
map("n", "<leader>ghR", gs.reset_buffer, { desc = "Reset buffer" })
map("n", "<leader>ghp", gs.preview_hunk, { desc = "Preview hunk" })
map("n", "<leader>gm", function()
  gs.blame_line { full = true }
end, { desc = "Blame line" })
map("n", "<leader>ghd", gs.diffthis, { desc = "Diff this" })
map("n", "<leader>ght", gs.toggle_deleted, { desc = "Toggle deleted" })
map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>")
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "lazygit" })
map("n", "<Leader>gwc", "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>", { desc = "Create Worktree", silent = true })
map("n", "<Leader>gww", "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", { desc = "Worktrees", silent = true })
map("n", "<Leader>gcb", "<cmd>GitConflictChooseBoth<CR>", { desc = "choose both" })
map("n", "<Leader>gcn", "<cmd>GitConflictNextConflict<CR>", { desc = "move to next conflict" })
map("n", "<Leader>gcc", "<cmd>GitConflictChooseOurs<CR>", { desc = "choose current" })
map("n", "<Leader>gcp", "<cmd>GitConflictPrevConflict<CR>", { desc = "move to prev conflict" })
map("n", "<Leader>gci", "<cmd>GitConflictChooseTheirs<CR>", { desc = "choose incoming" })
map("x", "<Leader>gL", "<cmd>GitLink<CR>", { desc = "get url for selection" })
map("n", "]c", function()
  if vim.wo.diff then
    return "]c"
  end
  vim.schedule(function()
    gs.next_hunk()
  end)
  return "<Ignore>"
end, { expr = true })

map("n", "[c", function()
  if vim.wo.diff then
    return "[c]"
  end
  vim.schedule(function()
    gs.prev_hunk()
  end)
  return "<Ignore>"
end, { expr = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ database                                                 │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<Leader>pd", "<cmd>lua require'dbee'.toggle()<CR>", { desc = icons.database .. " DB Explorer", silent = true })
map("n", "<leader>dj", "<cmd>lua require'dbee'.next()<CR>", { desc = "DB Next", silent = true })
map("n", "<leader>dk", "<cmd>lua require'dbee'.prev()<CR>", { desc = "DB Prev", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ markdown                                                 │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<leader>mp", ":MarkdownPreviewToggle<CR>", { desc = icons.toggle .. " Toggle Markdown Preview", silent = true })

-- ╭──────────────────────────────────────────────────────────╮
-- │ comments                                                 │
-- ╰──────────────────────────────────────────────────────────╯
map("n", "<C-i>", "<cmd>lua require'Comment.api'.toggle.linewise.current()<CR>", { desc = "Toggle comment" })
map("v", "<C-i>", "<cmd>lua require'Comment.api'.toggle.linewise(vim.fn.visualmode())<CR>", { desc = "Toggle comment" })
