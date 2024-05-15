vim.cmd("let g:netrw_liststyle = 3")    

local opt = vim.opt;

opt.relativenumber = false
opt.number = true

-- tabs & indentations
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true -- expands tabs to spaces
opt.autoindent = true -- copu indent from current line when starting a new one

-- search settings 
opt.ignorecase = true
opt.smartcase = true


opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard by default

--split windos
opt.splitright = true
opt.splitbelow = true

-- turn off swapfile
opt.swapfile = false
