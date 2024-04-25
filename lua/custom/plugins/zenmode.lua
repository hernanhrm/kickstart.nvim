return {
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
    vim.keymap.set('n', '<leader>zz', '<cmd> ZenMode <CR>', { desc = 'Toggle zen mode' })
  end,
}
