-- return {
--   'deparr/tairiki.nvim',
--   lazy = false,
--   priority = 1000, -- only necessary if you use tairiki as default theme
--   config = function()
--     require('tairiki').setup {
--       -- optional configuration here
--     }
--     require('tairiki').load() -- only necessary to use as default theme, has same behavior as ':colorscheme tairiki'
--   end,
-- }
--
-- return {
--   'rebelot/kanagawa.nvim',
--   config = function()
--     require('kanagawa').setup {
--       -- optional configuration here
--     }
--     require('kanagawa').load 'dragon'
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
