return {
  'petertriho/nvim-scrollbar',
  lazy = false,
  dependencies = {
    'lewis6991/gitsigns.nvim',
  },
  config = function()
    require('gitsigns').setup()
    require('scrollbar').setup()
    require('scrollbar.handlers.gitsigns').setup()
  end,
}
