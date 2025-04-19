local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
require 'configs.options'
require 'configs.mappings'
require('lazy').setup("plugins")
require 'configs.nvimtree'
require 'configs.treesitter'
require 'configs.lsp'
require 'configs.cmp'
require 'configs.nvterm'
require 'configs.luasnip'
require 'configs.oil'
vim.cmd 'colorscheme catppuccin-mocha'


