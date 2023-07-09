vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.softtabstop=4
vim.opt.expandtab = true
vim.opt.mouse = 'a'
vim.cmd [[autocmd BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm,*.njk,*.nunjucks set ft=jinja]]

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', {})
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', {})
