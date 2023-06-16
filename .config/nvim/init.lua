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

require("lazy").setup({
"nvim-tree/nvim-tree.lua",
"nvim-lua/plenary.nvim", 
"nvim-tree/nvim-web-devicons",
"MunifTanjim/nui.nvim",
"Exafunction/codeium.vim",
"williamboman/mason.nvim",
"williamboman/mason-lspconfig.nvim",
"nvim-treesitter/nvim-treesitter",
"nvim-treesitter/playground",
"nvim-treesitter/nvim-treesitter-context",
"nvim-treesitter/nvim-treesitter-textobjects",
"nvim-treesitter/nvim-treesitter-refactor",
"lewis6991/gitsigns.nvim",})

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
  vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
end

-- pass to setup along with your other options
require("nvim-tree").setup {
  ---
  on_attach = my_on_attach,
  ---
}

vim.keymap.set('n', '<C-l>',':NvimTreeToggle<CR>', {})
