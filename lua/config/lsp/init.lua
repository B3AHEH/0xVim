local mason_registry = require "mason-registry"
local mason_ok, mason = pcall(require, "mason")
local mason_lsp_ok, mason_lsp = pcall(require, "mason-lspconfig")

mason.setup {
  ui = {
    border = "rounded",
  },
}

mason_lsp.setup {
  ensure_installed = {
    "clangd",
    "cmake-language-server",
    "sqls",
    "bashls",
    "cssls",
    "eslint",
    "graphql",
    "html",
    "jsonls",
    "lua_ls",
    "prismals",
    "tsserver",
  },
  automatic_installation = true,
}

local ensure_installed = {
  "stylua",
  "prettier",
  "clang-format",
  "codelldb",
}

for _, tool in ipairs(ensure_installed) do
  local ok, package = pcall(mason_registry.get_package, tool)
  if ok and not package:is_installed() then
    pcall(function()
      package:install()
    end)
  end
end

local lspconfig = require "lspconfig"

local servers = { "html", "eslint", "vtsls", "cssls", "clangd", "lua_ls" }

local capabilities = vim.lsp.protocol.make_client_capabilities()

local function on_attach(client, bufnr) end

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = function(client) end,
    capabilities = capabilities,
  }
end

capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.html.setup {
  capabilities = capabilities,
  on_attach = on_attach, -- ваша функция on_attach, если есть
}

lspconfig.omnisharp.setup {
  capabilities = capabilities,
  cmd = { "dotnet", vim.fn.stdpath "data" .. "/mason/packages/omnisharp/libexec/OmniSharp.dll" },
  enable_import_completion = true,
  organize_imports_on_format = true,
  enable_roslyn_analyzers = true,
  root_dir = function()
    return vim.loop.cwd()
  end,
}
