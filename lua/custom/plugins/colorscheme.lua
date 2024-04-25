-- return {
--   'NvChad/base46',
--   lazy = true,
--   build = function()
--     require('base46').load_all_highlights()
--   end,
-- }

return {
  'mellow-theme/mellow.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd [[colorscheme mellow]]
  end,
}
