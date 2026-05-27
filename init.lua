require("options")
require("filetypes")
require("functions")
require("lsp")
require("config.lazy")
require("keymaps")

vim.opt.rtp:append(vim.fn.stdpath("config") .. "/lua/scripts")
