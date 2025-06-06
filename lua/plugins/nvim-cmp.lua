-- そのうち設定を見直す
return {
  -- nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- lsp
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim",
      -- 補完フレームワーク
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer", -- buffer
      "hrsh7th/cmp-path", -- path
      "hrsh7th/cmp-cmdline", -- cmdline
      "L3MON4D3/LuaSnip",  -- luasnip
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",

      "zbirenbaum/copilot-cmp", -- copilot
    },
    config = function()
      -- mason.nvim の設定
      require('mason').setup({
        ui = {
          border = 'rounded', -- ボーダーのスタイル
          icons = {
            package_installed = '✓',
            package_pending = '➜',
            package_uninstalled = '✗'
          }
        }
      })
      -- mason-lspconfig の設定
      require("mason-lspconfig").setup({
        automatic_setup = true,
      })

      -- nvim-cmp の設定
      local cmp = require('cmp')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      -- LuaSnip をロード
      local luasnip = require('luasnip')
      cmp.setup({
        snippet = {
          expand = function(args)
            -- ここを LuaSnip の展開関数に変更
            luasnip.lsp_expand(args.body)
          end,
        },
        window = {
          -- completion = cmp.config.window.bordered(),
          -- documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'copilot' },
          { name = 'path' },
        }, {
          { name = 'buffer' },
        }),
        formatting = {
          format = require('nvim-highlight-colors').format
        }
      })

      cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' }
        }
      })

      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' }
        }, {
          { name = 'cmdline' }
        }),
        matching = { disallow_symbol_nonprefix_matching = false }
      })

      -- nvim-lspconfig の設定
      -- ここに各LSPサーバーの設定を記述します
      local lspconfig = require('lspconfig')

      -- 例: Lua言語のLSPサーバー (sumneko_lua)
      -- lspconfig.sumneko_lua.setup {
      --   capabilities = capabilities
      -- }

      -- 例: PythonのLSPサーバー (pyright)
      -- lspconfig.pyright.setup {
      --   capabilities = capabilities
      -- }

      -- 例: TypeScript/JavaScriptのLSPサーバー (tsserver)
      -- lspconfig.tsserver.setup {
      --   capabilities = capabilities
      -- }
      --
      -- autopairs
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )
    end
  },
}
