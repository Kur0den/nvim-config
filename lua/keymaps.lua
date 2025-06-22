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
