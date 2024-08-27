return {
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  {
    'williamboman/mason-lspconfig.nvim',
  },
  {
  'williamboman/mason.nvim',
  config = function()
    local masonlsp = require 'mason-lspconfig'
    local masontools = require 'mason-tool-installer'
    local mason = require 'mason'
    mason.setup {
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    }
    masonlsp.setup {
      ensure_installed = {
        'lua_ls', --lsp for lua
        'tsserver', -- typescript
      },
    }
    masontools.setup {
      ensure_installed = {
        'prettier', -- prettier formatter
        'stylua', -- lua formatter
        'eslint_d', -- for js
        -- "isort", -- python formatter
        -- "black", -- python formatter
      },
    }
  end, 
  }
}
