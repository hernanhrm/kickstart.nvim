return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    vim.keymap.set('n', '<leader>xx', '<cmd> TroubleToggle <cr>', { desc = 'TroubleToggle' })
    vim.keymap.set('n', '<leader>xq', '<cmd> TroubleToggle quickfix  <cr>', { desc = 'TroubleToggle quickfix' })
  end,
}
