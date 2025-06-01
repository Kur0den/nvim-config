return {
  "daschw/leaf.nvim",
  config = function()
    require("leaf").setup({
      contrast = "medium",
    })
    vim.cmd("colorscheme leaf")
  end
}
