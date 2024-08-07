return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      -- things you want to change go here
      direction = 'float',
      shell = 'pwsh',
      open_mapping = [[<c-/>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
      -- terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      -- insert_mappings = true, -- whether or not the open mapping applies in insert mode
      float_opts = {
        border = 'curved',
      },
    },
    keys = {
      {
        '<C-/>',
        ':ToggleTerm<cr>',
        mode = 'n',
        desc = 'Toggle Terminal Window',
      },
    },
  },
}
