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
require 'configs.luasnip'
require 'configs.oil'
require 'configs.dap'

require('leap').create_default_mappings()
require('leap').opts.special_keys.prev_target = '<bs>'
require('leap').opts.special_keys.prev_group = '<bs>'
require('leap.user').set_repeat_keys('<cr>', '<bs>')

vim.g.codeium_enabled = true
vim.g.codeium_disable_bindings = 1
vim.g.vimtex_quickfix_enabled = 0
vim.cmd 'filetype plugin on'
vim.cmd 'colorscheme catppuccin-mocha'
---vim.cmd ':hi Normal guibg=NONE ctermbg=NONE'
vim.opt.conceallevel = 2
vim.g.netrwk_sort_options = "1"
vim.o.autochdir=true

require("dap").adapters.lldb = {
	type = "executable",
	command = "/usr/bin/lldb-vscode", -- adjust as needed
	name = "lldb",
}

local lldb = {
	name = "Launch lldb",
	type = "lldb", -- matches the adapter
	request = "launch", -- could also attach to a currently running process
	program = function()
		return vim.fn.input(
			"Path to executable: ",
			vim.fn.getcwd() .. "/",
			"file"
		)
	end,
	cwd = "${workspaceFolder}",
	stopOnEntry = false,
	args = {},
	runInTerminal = false,
}

require('dap').configurations.rust = {
	lldb -- different debuggers or more configurations can be used here
}
