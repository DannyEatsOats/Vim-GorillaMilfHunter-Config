return {
  'folke/persistence.nvim',
  lazy = false,
  event = 'BufReadPre',
  opts = {
    options = { 'buffers', 'curdir', 'tabpages', 'winsize' },
  },
  config = function(_, opts)
    require('persistence').setup(opts)

    vim.keymap.set('n', '<leader>rs', function()
      require('persistence').load()
    end, { desc = 'Restore session (cwd)' })

    vim.keymap.set('n', '<leader>rl', function()
      require('persistence').load { last = true }
    end, { desc = 'Restore last session' })
  end,
}
