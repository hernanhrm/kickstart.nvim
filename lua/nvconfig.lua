local M = {}

M.ui = {
  ------------------------------- base46 -------------------------------------
  -- hl = highlights
  hl_add = {},
  hl_override = {},
  changed_themes = {},
  theme_toggle = { 'onedark', 'one_light' },
  theme = 'onedark', -- default theme
  transparency = false,

  cmp = {
    icons = true,
    lspkind_text = true,
    style = 'default', -- default/flat_light/flat_dark/atom/atom_colored
  },

  telescope = { style = 'borderless' }, -- borderless / bordered

  ------------------------------- nvchad_ui modules -----------------------------
  statusline = {
    theme = 'default', -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = 'default',
    order = nil,
    modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = false,
  },

  nvdash = {
    load_on_startup = false,

    header = {
      '           ▄ ▄                   ',
      '       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ',
      '       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ',
      '    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ',
      '  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ',
      '  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄',
      '▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █',
      '█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █',
      '    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ',
    },

    buttons = {
      { '  Find File', 'Spc f f', 'Telescope find_files' },
      { '󰈚  Recent Files', 'Spc f o', 'Telescope oldfiles' },
      { '󰈭  Find Word', 'Spc f w', 'Telescope live_grep' },
      { '  Bookmarks', 'Spc m a', 'Telescope marks' },
      { '  Themes', 'Spc t h', 'Telescope themes' },
      { '  Mappings', 'Spc c h', 'NvCheatsheet' },
    },
  },

  cheatsheet = { theme = 'grid' }, -- simple/grid

  lsp = { enabled = false },

  term = {
    enabled = false,
  },
}

M.base46 = {
  integrations = {
    'blankline',
    'cmp',
    'defaults',
    'devicons',
    'git',
    'lsp',
    'mason',
    'nvcheatsheet',
    'nvdash',
    'nvimtree',
    'statusline',
    'syntax',
    'treesitter',
    'tbline',
    'telescope',
    'whichkey',
  },
}

M.type = 'dark'

return M
