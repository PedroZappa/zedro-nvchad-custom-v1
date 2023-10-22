local overrides = require("custom.configs.overrides")

local plugins = {
    -- null-ls configuration
    {
        'jose-elias-alvarez/null-ls.nvim',
        event = 'VeryLazy',
        opts = function()
            return require 'custom.configs.null-ls'
        end,
    },
    -- Defaults for LSP servers
    {
        'neovim/nvim-lspconfig',
        config = function ()
            -- NvChad config
            require 'plugins.configs.lspconfig'
            -- Zedro's config
            require 'custom.configs.lspconfig'
        end
    },
    -- Package Manager for LSP, DAPs, linters & formatters
    -- {
    --     'williamboman/mason.nvim',
    --     opts = {
    --         ensure_installed = {
    --            "clangd",
    --             "clang-format",
    --             "codelldb"
    --         }
    --     }
    -- },

    -- DAP (Debug Adapter Protocol)
     {
        'mfussenegger/nvim-dap',
        config = function (_, _)
            -- Load DAP config
            require('custom.configs.nvim-dap')
            -- Explicitly load mappings on 'dap' table
            require('core.utils').load_mappings('dap')
        end
    },
    -- Closes gaps between 'mason' & 'nvim-dap'
    {
        'jay-babu/mason-nvim-dap.nvim',
        event = 'VeryLazy',
        dependencies = {
            'williamboman/mason.nvim',
            'mfussenegger/nvim-dap',
        },
        opts = {
        -- Empty handlers obj loads defaults
        handlers = {}
        }
    },
    -- nvim DAP UI improved
    {
        'rcarriga/nvim-dap-ui',
        event = 'VeryLazy',
        dependencies = 'mfussenegger/nvim-dap',
        -- Auto-Open UI when running the debugger
        config = function()
            local dap = require('dap')
            local dapui = require('dapui')
            dapui.setup()
            dap.listeners.after.event_initialized['dapui_config'] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end
    },
    -- nvim-dap-virtual-text
    {
        'theHamsta/nvim-dap-virtual-text',
    },
    -- Undotree
    {
        'mbbill/undotree',
        event = 'VeryLazy',
    },
    -- Fugitive (Git Integration)
        {
        'tpope/vim-fugitive',
        event = 'VeryLazy',
    },
    -- Codeium
    {
        'Exafunction/codeium.vim',
        event = 'VeryLazy',
    },
	-- Github Copilot
	{
		'github/copilot.vim',
		event = 'VeryLazy',
	},
    -- vim-tmux-navigator
    {
        'christoomey/vim-tmux-navigator',
        event = 'VeryLazy',
    },
    -- Comment
    {
        'numToStr/Comment.nvim',
        lazy = false,
    },
    -- Colorizer
    {
        'uga-rosa/ccc.nvim',
        event = 'VeryLazy',
    },
    -- Lazygit
    {
        "kdheepak/lazygit.nvim",
        event = 'VeryLazy',
        -- optional for floating window border decoration
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim"
        },
    },
	-- 42Header
	{
		"42Paris/42header",
		event = "VeryLazy",
	},
	-- Markdown Preview
	{
		'iamcco/markdown-preview.nvim',
		run = function() vim.fn['mkdp#util#install']() end,
		event = "VeryLazy",
	},
	{
		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("neorg").setup {
				load = {
					["core.defaults"] = {}, -- Loads default behaviour
					["core.integrations.treesitter"] = {},
					["core.concealer"] = {
						config = {
							icon_preset = "diamond",
						},
					}, -- Adds pretty icons to your documents
					["core.dirman"] = { -- Manages Neorg workspaces
						config = {
							workspaces = {
								notes = "~/notes",
							},
							default_workspace = "notes",
						},
					},
					["core.pivot"] = {},
					["core.itero"] = {},
					["core.qol.toc"] = {
						config = {
							close_after_use = true,
						}
					},
					["core.summary"] = {},
					["core.esupports.metagen"] = {},
					["core.journal"] = {
						config = {
							journal_folder = "/notes",
						}
					},
					["core.qol.todo_items"] = {},
					["core.tangle"] = {},
				},
			}
		end,
        event = 'VeryLazy',
	},
	-- Oil (baby!!!)
	{
		'stevearc/oil.nvim',
		opts = {},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
        event = 'VeryLazy',
	},

	-- Config overrides
	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},
}

return plugins
