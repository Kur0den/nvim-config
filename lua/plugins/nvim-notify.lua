return {
  "rcarriga/nvim-notify",
  config = function()
    require('notify').setup({
      render = "default",
      background_colour="#000000",
      stage = "fade_in_slide_out",
    })
    vim.notify = require("notify")
  end,
}
