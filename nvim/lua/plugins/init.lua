return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        -- lua
        "lua-language-server",
        "stylua",

        -- web
        "html-lsp",
        "css-lsp",
        "prettier",
        "typescript-language-server",
        "tailwindcss-language-server",
        "deno",
        "json-lsp",
        "elixir-ls",
        "gopls",
        "sqls",
        "csharp-language-server",

        -- rust
        "rust-analyzer",

        -- web3
        "vscode-solidity-server",

        -- c/cpp stuff
        "clangd",

        -- shell
        "shfmt",
        "shellcheck",
        "bash-language-server",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- default
        "vim",
        "lua",
        "vimdoc",

        -- web
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "elixir",
        "heex",
        "eex",
        "surface",
        "go",
        "gomod",
        "gosum",
        "sql",
        "python",
        "c_sharp",

        -- config file
        "toml",
        "markdown",

        -- low level
        "c",
        "bash",
        "rust",
      },
    },
  },

  {
    "augmentcode/augment.vim",
    lazy = false,
  },

  {
    "Decodetalkers/csharpls-extended-lsp.nvim",
  },

  -- {
  --   "milanglacier/minuet-ai.nvim",
  --   lazy = false,
  --   config = function()
  --     require("minuet").setup {
  --       provider = "openai_compatible",
  --       provider_options = {
  --         openai_compatible = {
  --           -- model = "google/gemini-2.5-pro-exp-03-25:free",
  --           model = "deepseek/deepseek-chat-v3-0324",
  --           system = require("minuet.config").default_system,
  --           few_shots = require("minuet.config").default_few_shots,
  --           chat_input = require("minuet.config").default_chat_input,
  --           stream = true,
  --           end_point = "https://openrouter.ai/api/v1/chat/completions",
  --           api_key = "OPENROUTER_API_KEY",
  --           name = "openrouter",
  --         },
  --       },
  --     }
  --   end,
  -- },
  --
  -- {
  --   "hrsh7th/nvim-cmp",
  --   opts = function(_, opts)
  --     -- if you wish to use autocomplete
  --     table.insert(opts.sources, 1, {
  --       name = "minuet",
  --       group_index = 1,
  --       priority = 100,
  --     })
  --
  --     opts.performance = {
  --       -- It is recommended to increase the timeout duration due to
  --       -- the typically slower response speed of LLMs compared to
  --       -- other completion sources. This is not needed when you only
  --       -- need manual completion.
  --       fetching_timeout = 2000,
  --     }
  --
  --     opts.mapping = vim.tbl_deep_extend("force", opts.mapping or {}, {
  --       -- if you wish to use manual complete
  --       ["<A-y>"] = require("minuet").make_cmp_map(),
  --     })
  --   end,
  -- },

  -- {
  --   "yetone/avante.nvim",
  --   event = "VeryLazy",
  --   version = false,
  --   debug = true,
  --   opts = {
  --     provider = "openrouter",
  --     -- openrouter = {
  --     --   -- model = "google/gemini-2.5-pro-exp-03-25:free",
  --     --   model = "deepseek/deepseek-chat-v3-0324",
  --     --   timeout = 3000,
  --     --   temperature = 1,
  --     --   -- max_tokens = 1000000,
  --     --   max_tokens = 64000,
  --     -- },
  --     vendors = {
  --       ["openrouter"] = {
  --         __inherited_from = "openai",
  --         endpoint = "https://openrouter.ai/api/v1",
  --         api_key_name = "OPENROUTER_API_KEY",
  --         model = "google/gemini-2.5-pro-exp-03-25:free",
  --         -- model = "deepseek/deepseek-chat-v3-0324"
  --       },
  --     },
  --   },
  --   build = "make",
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --     "stevearc/dressing.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "MunifTanjim/nui.nvim",
  --     --- The below dependencies are optional,
  --     -- "echasnovski/mini.pick", -- for file_selector provider mini.pick
  --     -- "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
  --     -- "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
  --     -- "ibhagwan/fzf-lua", -- for file_selector provider fzf
  --     -- "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
  --     -- "zbirenbaum/copilot.lua", -- for providers='copilot'
  --     -- {
  --     --   -- support for image pasting
  --     --   "HakonHarnes/img-clip.nvim",
  --     --   event = "VeryLazy",
  --     --   opts = {
  --     --     -- recommended settings
  --     --     default = {
  --     --       embed_image_as_base64 = false,
  --     --       prompt_for_file_name = false,
  --     --       drag_and_drop = {
  --     --         insert_mode = true,
  --     --       },
  --     --       -- required for Windows users
  --     --       use_absolute_path = true,
  --     --     },
  --     --   },
  --     -- },
  --     {
  --       -- Make sure to set this up properly if you have lazy=true
  --       "MeanderingProgrammer/render-markdown.nvim",
  --       opts = {
  --         file_types = { "markdown", "Avante" },
  --       },
  --       ft = { "markdown", "Avante" },
  --     },
  --   },
  -- },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
