local opt = vim.opt


-- 行番号の表示
opt.number = true
opt.relativenumber = true

-- nowarp
opt.wrap = false

-- タブとインデントの設定
opt.smartindent = true
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2

-- 検索設定
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- shell
if vim.fn.executable('fish') == 1 then
  opt.shell = 'fish'
elseif vim.fn.executable('pwsh') == 1 then
  opt.shell = 'pwsh'
else
  opt.shell = 'powershell'
  opt.shellcmdflag = '-noProfile -Command'
end

-- termguicolors
opt.termguicolors = true

-- クリップボードの設定
opt.clipboard = 'unnamed,unnamedplus'

-- ボーダー
vim.o.winborder = 'rounded'

-- 右側に新規ウィンドウを開く
opt.splitright = true
-- 下に新規ウィンドウを開く
opt.splitbelow = true

-- globalstatus
opt.laststatus = 3

-- leaderキーの設定
vim.g.mapleader = '.' 

-- python3 host
vim.g.python3_host_prog=vim.fn.expand("~/.py-venv/nvim/bin/python3")

-- scroll
opt.scrolloff = 5
opt.sidescrolloff = 5
