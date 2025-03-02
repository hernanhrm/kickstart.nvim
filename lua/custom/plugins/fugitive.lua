return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Git status' })

    local ThePrimeagen_Fugitive = vim.api.nvim_create_augroup('ThePrimeagen_Fugitive', {})

    local autocmd = vim.api.nvim_create_autocmd
    autocmd('BufWinEnter', {
      group = ThePrimeagen_Fugitive,
      pattern = '*',
      callback = function()
        if vim.bo.ft ~= 'fugitive' then
          return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = { buffer = bufnr, remap = false }
      end,
    })

    -- NOTE: It allows me to easily set the branch i am pushing and any tracking
    -- needed if i did not set the branch up correctly
    -- vim.keymap.set('n', '<leader>gp', ':Git push -u origin ')
    -- vim.keymap.set('n', 'gu', '<cmd>diffget //2<CR>')
    -- vim.keymap.set('n', 'gh', '<cmd>diffget //3<CR>')
    -- vim.keymap.set('n', '<leader>gd', '<cmd>Git diff <CR>')
    -- vim.keymap.set('n', '<leader>gl', '<cmd>Git log <CR>')
  end,
}
