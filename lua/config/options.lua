-- ╔══════════════════════════════════════════════════════════════╗
--   File: config/options.lua
--   This file contains all Neovim configuration options settings.
-- ╚══════════════════════════════════════════════════════════════╝
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#a6e3a1", bold = true })
vim.api.nvim_set_hl(0, "Directory", { fg = "#a6e3a1", bold = true })
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#a6e3a1" })
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#cdd6f4" })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#a6e3a1", bold = true })
vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#a6e3a1", bold = true })
vim.api.nvim_set_hl(0, "DashboardFooter", { fg = "#585b70", italic = true })
vim.api.nvim_set_hl(0, "Title", { fg = "#a6e3a1" }) -- Цвет для заголовков

local icons = _0xVim_.icons

local options = {
    clipboard = "unnamedplus",            -- Use the system clipboard
    virtualedit = "onemore",              -- Allow the cursor to be placed after the end of the line
    number = true,                        -- Enable line numbering
    fillchars = "eob: ",                  -- Set characters for empty buffers
    syntax = "on",                        -- Enable syntax highlighting
    termguicolors = true,                 -- Enable support for 24-bit colors
    expandtab = true,                     -- Use spaces instead of tabs
    shiftwidth = 2,                       -- Number of spaces for one level of indentation
    tabstop = 2,                          -- One tab equals 2 spaces
    smartindent = true,                   -- Enable smart indentation
    fixeol = false,                       -- Do not add a new line at the end of the file
    ignorecase = true,                    -- Ignore case in search if all characters are lowercase
    joinspaces = false,                   -- Prevent joining multiple spaces in search
    smartcase = true,                     -- Case-sensitive if uppercase letters are used
    showmatch = true,                     -- Highlight matching parentheses
    splitbelow = true,                    -- Open new horizontal splits below
    splitright = true,                    -- Open new vertical splits to the right
    backup = false,                       -- Disable creating backup files
    undofile = true,                      -- Enable support for undo files
    incsearch = true,                     -- Incremental search
    hlsearch = true,                      -- Highlight search results
    scrolloff = 8,                        -- Number of lines to keep visible around the cursor
    sidescrolloff = 8,                    -- Number of columns to keep visible around the cursor horizontally
    wildmenu = true,                      -- Enable command-line completion menu
    history = 1000,                       -- Set size of command history
    lazyredraw = false,                   -- Redraw the screen while executing macros
    completeopt = "menu,menuone,noselect",-- Better autocompletion
    cursorline = true,                    -- Highlight current line
    emoji = false,                        -- Fix emoji display
    foldcolumn = "0",                     -- Fold column display settings
    foldnestmax = 0,                      -- Disable nested folding
    foldlevel = 99,                       -- For ufo provider, large value needed
    foldlevelstart = 99,                  -- Expand all folds by default
    laststatus = 3,                       -- Global statusline
    mouse = "a",                          -- Enable mouse
    pumheight = 10,                       -- Max items in completion menu
    relativenumber = false,               -- Disable relative line numbers
    showtabline = 2,                      -- Always show tabs
    signcolumn = "yes:2",                 -- Add sign column next to line number
    smarttab = true,                      -- Smart tab settings
    softtabstop = 2,                      -- Insert 2 spaces for tab
    swapfile = false,                     -- Disable swap files
    timeoutlen = 200,                     -- Timeout length for key sequences
    updatetime = 100,                     -- Faster completion
    viminfo = "'1000",                    -- Increase size of file history
    wrap = false,                         -- No line wrap
    writebackup = false,                  -- Disable write backup
    autoindent = true,                    -- Enable auto-indent
    backspace = "indent,eol,start",       -- Ensure backspace works as expected
    conceallevel = 2,                     -- Conceal text but show custom replacement character
    concealcursor = "",                   -- Expand text on cursor line
    encoding = "utf-8",                   -- File encoding
    errorbells = false,                   -- Disable error bells
    fileencoding = "utf-8",               -- Encoding for files
    showmode = false,                     -- Don't show -- INSERT --
}

local diagnosticIcons = { Error = icons.error, Warn = icons.warning, Hint = icons.questionCircle, Info = icons.info }

for type, icon in pairs(diagnosticIcons) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end

-- Apply options
if vim.bo.modifiable then
    for k, v in pairs(options) do
        vim.opt[k] = v
    end
end

local globals = {
    mapleader                   = _0xVim_.leader
}

-- Apply options
for k, v in pairs(globals) do
    vim.g[k] = v
  end

