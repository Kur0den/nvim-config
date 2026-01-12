return {
  "Diogo-ss/five-server.nvim",
  cmd = { "FiveServer" },
  build = function()
    require "fs.utils.install"()
  end,
  opts = {
    notify = true,
    host = "0.0.0.0"
    -- add other options
  },
  config = function(_, opts)
    require("fs").setup(opts)
  end,
}
