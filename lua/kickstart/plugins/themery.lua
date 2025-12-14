return {
  'zaldih/themery.nvim',
  lazy = false,
  config = function()
    local blackmetal_variants = {
      'bathory',
      'burzum',
      'dark-funeral',
      'darkthrone',
      'emperor',
      'gorgoroth',
      'immortal',
      'impaled-nazarene',
      'khold',
      'marduk',
      'mayhem',
      'nile',
      'taake',
      'thyrfing',
      'venom',
      'windir',
    }

    require('themery').setup {
      themes = blackmetal_variants, -- these are the names shown in the picker
      apply = function(theme)
        -- Dynamically apply black-metal variant
        require('black-metal').setup { theme = theme }
        require('black-metal').load()
      end,
      -- optional: store last selected theme
      store = true,
    }
  end,
  vim.keymap.set('n', '<leader>tt', ':Themery<CR>', { desc = '[Th]eme Picker' }),
}
