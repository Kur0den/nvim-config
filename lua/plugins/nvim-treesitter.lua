return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  opts = {
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    ensure_installed = {
      "python",
      "lua",
      "rust",
      "javascript",
      "typescript",
      "html",
      "css",
      "json",
      "markdown",
      "markdown_inline",
    },

  }
}
