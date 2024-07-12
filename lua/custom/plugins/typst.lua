return {
  {
    'kaarmu/typst.vim',
    ft = 'typst',
    lazy = false,

    config = function()
      vim.g.typst_pdf_viewer = 'SumatraPDF'
      vim.g.typst_conceal_emoji = true
      vim.g.typst_embedded_languages = { 'javascript', 'markdown', 'python' }
    end,

    -- keys = {
    --   {
    --     '<leader>dp',
    --     ':typstwatch<cr>',
    --     mode = 'n',
    --     desc = '[p]review typst document',
    --   },
    -- },
  },
  {
    'chomosuke/typst-preview.nvim',
    lazy = false, -- or ft = 'typst'
    version = '0.3.*',
    build = function()
      require('typst-preview').update()
    end,
    opts = {
      open_cmd = 'chromium %s --enable-features=ClearDataOnExit --no-default-browser-check',
    },
    keys = {
      {
        '<leader>dp',
        ':TypstPreviewToggle<cr>',
        mode = 'n',
        desc = '[P]review Typst document',
      },
      -- {
      --   '<leader>dps',
      --   ':TypstPreviewStop<cr>',
      --   mode = 'n',
      --   desc = '[P]review Typst document: [S]top',
      -- },
    },
  },
}
