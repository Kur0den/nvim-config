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
      handlers ={
        function(server_name)
          require("lspconfig")[server_name].setup({
            capabilities = require('cmp_nvim_lsp').default_capabilities(),
            on_attach = function(client, bufnr)
              if client.server_capabilities.inlayHintProvider then
                vim.lsp.inlay_hint.enable(bufnr, true)
              end
            end

            -- lspサーバー固有の設定
          })
        end,
      }
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

