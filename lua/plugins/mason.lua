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
    opts = {
      automatic_setup = true,
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

