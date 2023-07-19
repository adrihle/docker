local NAME = 'neovim/nvim-lspconfig'

local DEPENDENCIES = {
  'mason.nvim',
  'hrsh7th/cmp-nvim-lsp'
}

local CONFIG = function()
  local lspconfig = require("lspconfig")
  local SERVERS = require('plugins.protocol.servers')

  local handlers = {
    ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
      silent = true,
      border = Roccocode.ui.float.border,
    }),
    ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = Roccocode.ui.float.border }),
    ["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics,
      { virtual_text = Roccocode.lsp.virtual_text }
    ),
  }

  local function on_attach()
    -- set up buffer keymaps, etc.
  end

  local capabilities = require("cmp_nvim_lsp").default_capabilities()

  capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true,
  }

  lspconfig.lua_ls.setup({
    capabilities = capabilities,
    handlers = handlers,
    on_attach = on_attach,
    settings = SERVERS.LUA.settings,
  })
end

return {
  {
    NAME,
    dependencies = DEPENDENCIES,
    servers = false,
    lazy = false,
    config = CONFIG,
  }
}
