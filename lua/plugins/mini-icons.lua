return {
  "echasnovski/mini.icons",
  opts = {
    icons = {}
  },
  init = function()
    -- disble nvim-web-devicons
    package.preload["nvim-web-devicons"] = function()
      require("mini.icons").mock_nvim_web_devicons()
      return paclage.loaded["nvim-web-devicons"]
    end
  end
}
