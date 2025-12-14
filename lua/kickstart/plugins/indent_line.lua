return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {
      indent = {
        char = '┊',
        highlight = 'IblIndent',
      },
      scope = { enabled = false },
    },
    config = function(_, opts)
      -- Subtle gray
      vim.api.nvim_set_hl(0, 'IblIndent', { fg = '#3b3b3b' })
      require('ibl').setup(opts)
    end,
  },
}
