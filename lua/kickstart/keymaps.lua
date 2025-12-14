-- [[ Basic Keymaps ]]
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
--
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', 'x', '"_x', { noremap = true, silent = true })
vim.keymap.set('n', 'dd', '"_dd', { noremap = true, silent = true })
vim.keymap.set('n', 'dw', '"_dw', { noremap = true, silent = true })
vim.keymap.set('v', 'd', '"_d', { noremap = true, silent = true })

vim.keymap.set('n', 'é', '$', { noremap = true, silent = true })
vim.keymap.set('v', 'é', '$', { noremap = true, silent = true })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true })

vim.keymap.set('n', 'n', 'nzzzv', { noremap = true })
vim.keymap.set('n', 'n', 'Nzzzv', { noremap = true })

-- Resize Keymaps
vim.keymap.set('n', '<C-Up>', '<cmd>resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Down>', '<cmd>resize +2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +2<CR>', { noremap = true, silent = true })

-- Buffer Keymaps
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { noremap = true })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { noremap = true })
vim.keymap.set('n', '<leader>c', ':Bdelete!<CR>', { noremap = true })
vim.keymap.set('n', '<leader>b', ':<cmd> enew <CR>', { noremap = true })

-- Window keymaps
vim.keymap.set('n', '<leader>wv', '<C-w>v', { noremap = true })
vim.keymap.set('n', '<leader>wh', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<leader>we', '<C-w>=', { noremap = true })
vim.keymap.set('n', '<leader>wc', ':close<CR>', { noremap = true })

-- Diagnostics
vim.keymap.set('n', '<S-j>', vim.diagnostic.open_float, { noremap = true })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
  vim.lsp.handlers.hover,
  { border = 'rounded', timeout = 50 } -- Adjust timeout (default is high)
)

-- Keep last yank
vim.keymap.set('v', 'p', '"_dP', { noremap = true })

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', { noremap = true })
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { noremap = true })
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', { noremap = true })
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', { noremap = true })

-- Indenting
vim.keymap.set('v', '<', '<gv', { noremap = true })
vim.keymap.set('v', '>', '>gv', { noremap = true })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
--
-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })
