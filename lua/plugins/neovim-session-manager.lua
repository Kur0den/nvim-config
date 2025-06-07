return {
  "Shatur/neovim-session-manager",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("session_manager").setup({
      autoload_mode = require("session_manager.config").AutoloadMode.CurrentDir,
    })
  end
}
