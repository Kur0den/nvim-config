local opt = vim.opt


-- 行番号の表示
opt.number = true
opt.relativenumber = true

-- タブとインデントの設定
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- 検索設定
opt.ignorecase = true
opt.smartcase = true

-- shell
opt.shell = 'pwsh.exe'
opt.shellcmdflag = '-noProfile -Command'

