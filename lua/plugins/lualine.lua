return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'echasnovski/mini.icons' },
  config = function()
    require('lualine').setup({
    options = {
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
    },
    lualine = {
      lualine_c = {
        {
          "filename",
          symbols = {
            modified="*",
            readonly="[R]",
          }
        },
        "filesize",
      },
      lualine_x = {
        {
          "encoding",
          showbomb=true,
        },
        "fileformat",
        "filetype",
      }
    },
    tabline = {
      lualine_a = {
        {
          'tabs',
          mode=2,
          path=0,
          use_mode_colors=true,
          symbols = {
            modified="*",
          }
        }
      },
      lualine_z = {
        {
          "buffers",
          mode=2,
          use_mode_colors=true,
          filetype_names = {
            oil="Oil",
            TelescopePrompt="Telescope",
          },
          symbols = {
            modified="*",
          }
        }
      }
    },
    extentions = {"oil", "mason", "lazy", "trouble" }
  })
  end
}
