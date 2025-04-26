vim.cmd 'filetype plugin on'
vim.cmd ':hi Normal guibg=NONE ctermbg=NONE'
vim.g.mapleader = " "
vim.o.conceallevel = 2
vim.g.netrwk_sort_oions = "1"
vim.o.autochdir=true
vim.o.autoindent = true
vim.o.tabstop=4
vim.o.softtabstop=4
vim.o.mouse = 'a'
vim.o.undodir = '/home/alcestide/.local/state/nvim/undo/'
vim.o.undofile = true
vim.o.undolevels = 10000
vim.o.clipboard = 'unnamedplus'
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.foldcolumn = "4"
vim.o.gdefault = true
vim.o.ignorecase = true
vim.o.ruler = true
vim.o.scrolloff = 5
vim.o.shiftwidth = 4
vim.o.smartcase = true
vim.o.smarttab = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.statuscolumn = "%s%=%{printf('%' .. len(v:lnum) .. 'd', v:relnum)}%=%{printf('%' .. len(v:relnum) .. 'd', v:lnum)} "
vim.o.signcolumn = yes

-- Reverse relative and absolute
--vim.o.statuscolumn = "%s%=%{printf('%' .. len(v:relnum) .. 'd', v:lnum)}%=%{printf('%' .. len(v:lnum) .. 'd', v:relnum)} "

