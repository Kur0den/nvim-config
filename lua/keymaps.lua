local keyset = vim.keymap.set

-- lspにかんけいするやつ
-- -- 次のエラーにジャンプ
keyset('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
-- 前のエラーにジャンプ
keyset('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
-- 現在行の診断情報をフロートで表示
keyset('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })

-- terminal
keyset("t", "<C-\\><C-\\>", "<C-\\><C-n>", { silent = true, desc = "Exit terminal mode" })

-- molten
vim.keymap.set("n", "<localleader>mi", ":MoltenInit<CR>",
    { silent = true, desc = "Initialize the plugin" })
vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>",
    { silent = true, desc = "run operator selection" })
vim.keymap.set("n", "<localleader>mrl", ":MoltenEvaluateLine<CR>",
    { silent = true, desc = "evaluate line" })
vim.keymap.set("n", "<localleader>mrr", ":MoltenReevaluateCell<CR>",
    { silent = true, desc = "re-evaluate cell" })
vim.keymap.set("v", "<localleader>mr", ":<C-u>MoltenEvaluateVisual<CR>gv",
    { silent = true, desc = "evaluate visual selection" })
vim.keymap.set("n", "<localleader>me", ":MoltenEvaluateOperator<CR>", { desc = "evaluate operator", silent = true })
vim.keymap.set("n", "<localleader>mos", ":noautocmd MoltenEnterOutput<CR>", { desc = "open output window", silent = true })
vim.keymap.set("n", "<localleader>moh", ":MoltenHideOutput<CR>", { desc = "close output window", silent = true })
vim.keymap.set("n", "<localleader>mmd", ":MoltenDelete<CR>", { desc = "delete Molten cell", silent = true })

-- quarto
local runner = require("quarto.runner")
vim.keymap.set("n", "<localleader>rc", runner.run_cell,  { desc = "run cell", silent = true })
vim.keymap.set("n", "<localleader>ra", runner.run_above, { desc = "run cell and above", silent = true })
vim.keymap.set("n", "<localleader>rA", runner.run_all,   { desc = "run all cells", silent = true })
vim.keymap.set("n", "<localleader>rl", runner.run_line,  { desc = "run line", silent = true })
vim.keymap.set("v", "<localleader>r",  runner.run_range, { desc = "run visual range", silent = true })
vim.keymap.set("n", "<localleader>RA", function()
  runner.run_all(true)
end, { desc = "run all cells of all languages", silent = true })

-- flutter
-- vim.keymap.set("n", "<leader>f0", require("telescope").extensions.flutter.commands, { desc = "Open command Flutter" })
vim.keymap.set("n", "<leader>fr", ":FlutterReload<CR>", { silent = true, desc = "Flutter Reload" })
vim.keymap.set("n", "<leader>fR", ":FlutterRestart<CR>", { silent = true, desc = "Flutter Restart" })

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>flr', builtin.lsp_references, { desc = 'Telescope LSP References' })
vim.keymap.set('n', '<leader>fld', builtin.lsp_definitions, { desc = 'Telescope LSP Definitions' })
vim.keymap.set('n', '<leader>flt', builtin.lsp_type_definitions, { desc = 'Telescope LSP Type definisions' })
