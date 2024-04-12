-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup {
        view = {
          width = 40,
        },
        filters = {
          dotfiles = false,
        },
      }
    end,
  },
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
    'folke/zen-mode.nvim',
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      window = {
        width = 0.65,
        options = {
          number = true,
          relativenumber = true,
        },
      },
      plugins = {
        alacritty = {
          enabled = true,
          font = '12',
        },
      },
    },
    config = function()
      vim.keymap.set('n', '<leader>zm', '<cmd> ZenMode <CR>', { desc = 'Toggle zen mode' })
    end,
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
  -- {
  --   'Jezda1337/nvim-html-css',
  --   dependencies = {
  --     'hrsh7th/nvim-cmp',
  --     'nvim-treesitter/nvim-treesitter',
  --   },
  --   config = function()
  --     require('html-css'):setup()
  --   end,
  -- },
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
}
