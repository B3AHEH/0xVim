local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "clangd", "lua_ls" }

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

lspconfig.omnisharp.setup {
  capabilities = capabilities,
  cmd = { "dotnet", vim.fn.stdpath "data" .. "/mason/packages/omnisharp/libexec/OmniSharp.dll" },
  enable_import_completion = true,
  organize_imports_on_format = true,
  enable_roslyn_analyzers = true,
  root_dir = function()
    return vim.loop.cwd() -- current working directory
  end,
}

-- lsps with custom config
