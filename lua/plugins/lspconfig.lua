return {
  "neovim/nvim-lspconfig",
  event = "VeryLazy",
  dependencies = {
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
  },
  -- lspの設定はmason側で行う
  -- mason側で自動的に起動してくれるからそこで設定する必要がある
}
