return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'echasnovski/mini.icons' },
  config = function()
    require('lualine').setup({
    options = {
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
    },
    extentions = {"oil", "mason", "lazy", "trouble" }
  })
  end
}
