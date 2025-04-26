return {

    ------------------------------------
    --------------- Mini ---------------
  {
    "echasnovski/mini.icons",
    opts = {},
    lazy = true,
    specs = {
      { "nvim-tree/nvim-web-devicons", enabled = false, optional = true },
    },
    init = function()
      package.preload["nvim-web-devicons"] = function()
        require("mini.icons").mock_nvim_web_devicons()
        return package.loaded["nvim-web-devicons"]
      end
    end,
  },
  {
    "echasnovski/mini.starter",
        version = '*',
        lazy = true,
        init = function()
        require("mini.starter").setup()
    end,
  },
    ------------------------------------

    {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
},

{
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration

    -- Only one of these is needed.
    "nvim-telescope/telescope.nvim", -- optional
    "ibhagwan/fzf-lua",              -- optional
    "echasnovski/mini.pick",         -- optional
  },
},

{
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
},

{
    "ThePrimeagen/harpoon"
},

{
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
},



{'nvim-pack/nvim-spectre'},
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
{
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
},

{
    'rcarriga/nvim-notify',
    lazy = false,
    config = function ()
      require("notify").setup {
        stages = "fade_in_slide_out",
        timeout = 3000,
        fps = 144,
      }
      vim.notify = require('notify')
    end
  },
  {"MunifTanjim/nui.nvim",},
{
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },

--[[
{
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup {
      -- your configuration comes here
  },
--]]
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
{
  "karb94/neoscroll.nvim",
  opts = {
  },
},
{ "catppuccin/nvim",
lazy = true,
name = "catppuccin",
priority = 1,
opts = {
    color_overrides = {
		mocha = {
	----	    base = "#000000",
	----		mantle = "#000000",
	----		crust = "#000000",
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
