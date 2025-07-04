require("options")
require("filetypes")
require("keymaps")
require("functions")
require("config.lazy")

vim.opt.rtp:append(vim.fn.stdpath("config") .. "/lua/scripts")
