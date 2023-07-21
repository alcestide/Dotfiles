return {
{
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration

    -- Only one of these is needed, not both.
    "nvim-telescope/telescope.nvim", -- optional
    "ibhagwan/fzf-lua",              -- optional
  },
  config = true
},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},
{ "catppuccin/nvim",
name = "catppuccin",
priority = 1000,
opts = {
    color_overrides = {
		mocha = {
			    base = "#000000",
				mantle = "#000000",
				crust = "#000000",
                },
			},},},

    { "mfussenegger/nvim-dap"   },

    {
    	'nvim-telescope/telescope.nvim',
    	tag = '0.1.2',
      	dependencies = { 'nvim-lua/plenary.nvim' }
    },

    ----{   "ahmedkhalf/project.nvim"},

    {   "mbbill/undotree"   },
    {   "lervag/vimtex"     },
    {'nvim-orgmode/orgmode',
    ft = {'org'},
    config = function()
            require('orgmode').setup{}
    end
    },

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
        {'neovim/nvim-lspconfig'},
        {
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
        },

      {'williamboman/mason-lspconfig.nvim'},
      {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()
        require("nvim-tree").setup({sync_root_with_cwd = true})
        end,
    },

      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    },
  },

  {'akinsho/toggleterm.nvim'},

  {
  "NvChad/nvterm",
  config = function ()
    require("nvterm").setup()
  end,
    },


    {
    'Exafunction/codeium.vim',
    config = function ()
    vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
    vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  end
},
    }
