return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'main',
  lazy = false,
  build = ":TSUpdate",
  -- opts = {
  --   highlight = {
  --     enable = true,
  --   },
  --   indent = {
  --     enable = true,
  --   },
  --   ensure_installed = {
  --     "python",
  --     "lua",
  --     "rust",
  --     "javascript",
  --     "typescript",
  --     "html",
  --     "css",
  --     "json",
  --     "markdown",
  --     "markdown_inline",
  --   },
  -- }
  config = function ()
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("vim-treesitter-start", {}),
      callback = function ()
        pcall(vim.treesitter.start)
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end
    
}
