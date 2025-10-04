local keyset = vim.keymap.set


-- leaderキーの設定
vim.g.mapleader = '.' 

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
vim.keymap.set("n", "<localleader>rl", ":MoltenEvaluateLine<CR>",
    { silent = true, desc = "evaluate line" })
vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>",
    { silent = true, desc = "re-evaluate cell" })
vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>gv",
    { silent = true, desc = "evaluate visual selection" })
