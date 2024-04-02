return {
  'marko-cerovac/material.nvim',
  priority = 2000,
  opts = {},
  init = function()
    vim.cmd 'colorscheme material'
    require('material.functions').change_style 'darker'

    vim.keymap.set('n', '<leader>th', require('material.functions').find_style, { desc = 'Find theme styles' })
  end,
}
