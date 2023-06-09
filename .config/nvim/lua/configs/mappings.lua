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
vim.opt.undodir = '~/.local/state/nvim/undo/'
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.clipboard = 'unnamedplus'

------------------
--Custom Keymaps--
------------------

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', {})
vim.keymap.set('n', '<leader>ff', ':Telescope find_files hidden=true<CR>', {})
vim.keymap.set('n', '<leader>]', ':bn<CR>', {})
vim.keymap.set('n', '<leader>[', ':bp<CR>', {})
vim.keymap.set('n', '<leader><F5>', ':UndotreeToggle<CR>', {})
