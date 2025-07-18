-- そのうち設定を見直す
return {
  -- nvim-lspconfig
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- 補完フレームワーク
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
      -- nvim-cmp の設定
      local cmp = require('cmp')
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
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
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
        },
        completion = {
          documentation = {
            auto_show = true,
          }
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

      -- autopairs
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )
    end
  },
}
