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
opt.clipboard = 'unnamedplus'

-- ボーダー
vim.o.winborder = 'rounded'

-- 右側に新規ウィンドウを開く
opt.splitright = true
