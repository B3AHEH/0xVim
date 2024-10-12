local cmp = require "cmp"

cmp.setup {
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = {
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<Enter>"] = cmp.mapping.confirm { select = true },
    ["<C-e>"] = cmp.mapping.close(),
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
    { name = "cmdline" },
    { name = "luasnip" },
  },
  -- formatting = {
  --     format = function(entry, vim_item)
  --         vim_item.kind = string.format('%s %s', require('lspkind').presets.default[vim_item.kind], vim_item.kind)
  --         return vim_item
  --     end,
  -- },
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
