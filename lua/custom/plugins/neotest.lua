return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-go',
    'nvim-neotest/neotest-jest',
  },
  config = function()
    -- get neotest namespace (api call creates or returns namespace)
    local neotest_ns = vim.api.nvim_create_namespace 'neotest'
    local neotest = require 'neotest'
    vim.diagnostic.config({
      virtual_text = {
        format = function(diagnostic)
          local message = diagnostic.message:gsub('\n', ' '):gsub('\t', ' '):gsub('%s+', ' '):gsub('^%s+', '')
          return message
        end,
      },
    }, neotest_ns)

    neotest.setup {
      -- your neotest config here
      adapters = {
        require 'neotest-go',
        require 'neotest-jest' {
          jestCommand = 'npm test --',
          jestConfigFile = 'custom.jest.config.ts',
          env = { CI = true },
          cwd = function()
            return vim.fn.getcwd()
          end,
        },
      },
    }

    vim.keymap.set('n', '<leader>tc', function()
      neotest.run.run()
    end)

    vim.keymap.set('n', '<leader>ts', '<cmd>Neotest summary <CR>', { desc = 'Show test summary' })
    vim.keymap.set('n', '<leader>to', '<cmd>Neotest output <CR>', { desc = 'Show test output' })
    vim.keymap.set('n', '<leader>tp', '<cmd>Neotest output-panel <CR>', { desc = 'Show test output panel' })
  end,
}
