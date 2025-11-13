return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗'
        }
      }
    }
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
    },
    after = "mason.nvim",
    opts = {
      automatic_setup = true,
      -- handlers ={
      --   function(server_name)
      --     -- vim.lsp.enable({server_name})
      --     -- require("lspconfig")[server_name].setup({ capabbilities = capabilities })
      --     require("lspconfig")[server_name].setup({
      --       capabilities = require('blink.cmp').get_lsp_capabilities(),
      --       on_attach = function(client, bufnr)
      --         if client.server_capabilities.inlayHintProvider then
      --           vim.lsp.inlay_hint.enable(bufnr, true)
      --         end
      --       end,
      --     --   settings = server_name == "ts_ls" and {
      --     --       typescript = {
      --     --         inlayHints = {
      --     --            -- 以下の設定でインラインヒントを有効化
      --     --           includeInlayParameterNameHints = "literals", -- 関数の引数名ヒント
      --     --           includeInlayParameterNameHintsWhenArgumentMatchesName = false,
      --     --           includeInlayVariableTypeHints = true,      -- 変数の型ヒント
      --     --           includeInlayPropertyDeclarationTypeHints = true, -- プロパティの型ヒント
      --     --           includeInlayFunctionParameterTypeHints = true, -- 関数の引数の型ヒント
      --     --           includeInlayFunctionLikeReturnTypeHints = true,  -- 関数の戻り値の型ヒント
      --     --           includeInlayEnumMemberValueHints = true,   -- enumメンバーの値ヒント
      --     --         },
      --     --       },
      --     --       javascript = {
      --     --         inlayHints = {
      --     --           includeInlayParameterNameHints = "literals",
      --     --           includeInlayParameterNameHintsWhenArgumentMatchesName = false,
      --     --           includeInlayVariableTypeHints = true,
      --     --           includeInlayPropertyDeclarationTypeHints = true,
      --     --           includeInlayFunctionParameterTypeHints = true,
      --     --           includeInlayFunctionLikeReturnTypeHints = true,
      --     --           includeInlayEnumMemberValueHints = true,
      --     --         },
      --     --       },
      --     --   } or nil,
      --     --   -- lspサーバー固有の設定
      --     -- })
      --     })
      --   end,
      -- }
    }
  },
  {
   "WhoIsSethDaniel/mason-tool-installer.nvim",
   dependencies = {
     "mason-org/mason.nvim",
   },
   opts = {
      ensure_installed = {
        "css-lsp",
        "html-lsp",
        "intelephense",
        "lua-language-server",
        "prettier",
        "remark-language-server",
        "selene",
        "sonarlint-language-server",
        "docker-compose-language-service",
        "dockerfile-language-server",
      }
    }
  },
}

