-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },
  {
    'wakatime/vim-wakatime',
    lazy = false,
  },
  {
    'editorconfig/editorconfig-vim',
    lazy = false,
  },

  {
    'olexsmir/gopher.nvim',
    ft = 'go',
    config = function(_, opts)
      require('gopher').setup(opts)
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    'NvChad/nvim-colorizer.lua',
    opts = {
      user_default_options = {
        tailwind = true,
      },
    },
  },
  {
    'tjdevries/colorbuddy.nvim',
  },
  {
    'github/copilot.vim',
  },
  {
    'rafamadriz/friendly-snippets',
    config = function()
      require('luasnip.loaders.from_vscode').lazy_load()
    end,
  },
  {
    'windwp/nvim-ts-autotag',
    dependencies = 'nvim-treesitter/nvim-treesitter',
    opts = {
      autotag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = true,
      },
    },
    lazy = true,
    event = 'VeryLazy',
  },
  -- if u want nvchad's ui plugin :)
  -- {
  --   'NvChad/ui',
  --   config = function()
  --     require 'nvchad'
  --   end,
  -- },
  -- -- dependency for ui
  -- {
  --   'nvim-tree/nvim-web-devicons',
  --   lazy = true,
  --   opts = function()
  --     return { override = require 'nvchad.icons.devicons' }
  --   end,
  --   config = function(_, opts)
  --     dofile(vim.g.base46_cache .. 'devicons')
  --     require('nvim-web-devicons').setup(opts)
  --   end,
  -- },
}
