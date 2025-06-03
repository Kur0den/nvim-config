local opt = vim.opt


-- 行番号の表示
opt.number = true
opt.relativenumber = true

-- nowarp
opt.wrap = false

-- タブとインデントの設定
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- 検索設定
opt.ignorecase = true
opt.smartcase = true

-- shell
opt.shell = 'pwsh.exe'
opt.shellcmdflag = '-noProfile -Command'

-- termguicolors
opt.termguicolors = true

-- leaderキーの設定
vim.g.mapleader = '.'

-- クリップボードの設定
opt.clipboard = 'unnamedplus'

-- ボーダー
vim.o.winborder = 'rounded'
