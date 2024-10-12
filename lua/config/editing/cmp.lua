-- ╔══════════════════════════════════════════════════════════════╗
--   File: config/editing/cmp.lua
--   This is a configuration file for nvim-cmp
-- ╚══════════════════════════════════════════════════════════════╝

local cmp = require "cmp"
local lspkind = require "lspkind"

cmp.setup {
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = {
    ["<Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ["<S-Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<Enter>"] = cmp.mapping.confirm { select = true },
    ["<Esc>"] = cmp.mapping.close(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer", keyword_length = 2 },
    { name = "path" },
    { name = "luasnip" },
  },
  completion = {
    completeopt = "menu,menuone,noselect",
    keyword_length = 1,
  },
  formatting = {
    format = lspkind.cmp_format {
      mode = "symbol_text",
      menu = {
        nvim_lsp = "[LSP]",
        ultisnips = "[US]",
        path = "[Path]",
        buffer = "[Buffer]",
        emoji = "[Emoji]",
      },
      show_labelDetails = true,
      maxwidth = 40,
      ellipsis_char = "...",
    },
  },
  preselect = cmp.PreselectMode.None,
  window = {
    completion = {
      border = "rounded",
      winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
    },
    documentation = {
      border = "rounded",
      winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
    },
  },
}

cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "cmdline" },
  },
})

cmp.setup.cmdline({ "/", "?" }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" },
  },
})
