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
require 'configs.mappings'
require 'configs.nvimtree'
require('lazy').setup("plugins")
require 'configs.treesitter'
require 'configs.lsp'
require 'configs.nvterm'
