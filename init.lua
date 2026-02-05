require("options")
require("filetypes")
require("keymaps")
require("functions")
require("lsp")
require("config.lazy")

vim.opt.rtp:append(vim.fn.stdpath("config") .. "/lua/scripts")
