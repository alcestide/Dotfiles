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

vim.g.vimtex_quickfix_enabled = 0
vim.cmd 'filetype plugin on'
vim.cmd 'colorscheme catppuccin-mocha'
---vim.cmd ':hi Normal guibg=NONE ctermbg=NONE'
-- Alacritty

local alacrittyAutoGroup = vim.api.nvim_create_augroup('alacritty', { clear = true })

vim.api.nvim_create_autocmd('VimEnter', {
  group = alacrittyAutoGroup,
  callback = function()
    vim.fn.system(
      "alacritty msg --socket $ALACRITTY_SOCKET config -w $ALACRITTY_WINDOW_ID options 'window.padding.x=0' 'window.padding.y=0' 'window.dynamic_padding=true'"
    )
  end,
})

vim.api.nvim_create_autocmd('VimLeavePre', {
  group = alacrittyAutoGroup,
  callback = function()
    vim.fn.jobstart('alacritty msg --socket $ALACRITTY_SOCKET config -w $ALACRITTY_WINDOW_ID -r', { detach = true })
  end,
})
