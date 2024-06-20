return {
{
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
},

{"ggandor/leap.nvim",
lazy=false,},
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
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
},

{'nvim-pack/nvim-spectre'},

{
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
},

{
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},
    {"jay-babu/mason-nvim-dap.nvim",
        event = "VeryLazy",
        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap",},
        opts = {handlers = {}}},
    { "mfussenegger/nvim-dap",
        dependencies = {
            { "nvim-neotest/nvim-nio" },
        }
    },

    {
    	'nvim-telescope/telescope.nvim',
    	tag = '0.1.2',
      	dependencies = { 'nvim-lua/plenary.nvim' }
    },


    {   "mbbill/undotree"   },
    {

        "lervag/vimtex",
        lazy =false,
        init = function()
            vim.g.vimtex_flavor = 'latex'
            vim.g.vimtex_view_method = 'zathura'
            vim.g.vimtex_quickfix_mode = 0
            vim.g.vimtex_conceal = 'abdmg'
            --vim.g.vimtex_conceallevel = 1
        end

    },
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
        opts = { ensure_installed = {"g++", "clangd", "codelldb"} },
        },

      {'williamboman/mason-lspconfig.nvim'},

{ "catppuccin/nvim",
lazy = true,
name = "catppuccin",
priority = 1,
opts = {
    color_overrides = {
		mocha = {
			    base = "#000000",
				mantle = "#000000",
				crust = "#000000",
                },
			},
        style = "catppuccin-mocha",
        },},

    {"rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    dapui.setup()
    dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
    end
end,
},


      {'hrsh7th/nvim-cmp',
  },
      {'hrsh7th/cmp-nvim-lsp'},

{
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
},

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
    'nvim-lualine/lualine.nvim',
    config = function()
        require('lualine').setup()
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' }
},

       }
