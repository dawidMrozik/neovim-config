-- Save with Ctrl+S (map Cmd+S to hex 0x13 in iTerm2)
vim.keymap.set({ 'n', 'i', 'v' }, '<C-s>', '<cmd>w<CR>', { desc = 'Save file' })

-- Clear search highlights
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostics
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },
  virtual_text = true,
  virtual_lines = false,
  jump = { float = true },
}

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>qi', function()
  vim.lsp.buf.code_action { context = { only = { 'source' }, diagnostics = {} }, apply = true }
end, { desc = 'Source code actions for file' })
vim.keymap.set('n', '<leader>ne', function()
  vim.diagnostic.jump { count = 1, severity = vim.diagnostic.severity.ERROR }
end, { desc = '[N]ext [E]rror' })
vim.keymap.set('n', '<leader>pe', function()
  vim.diagnostic.jump { count = -1, severity = vim.diagnostic.severity.ERROR }
end, { desc = '[P]rev [E]rror' })

-- Terminal
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('t', '<C-h>', '<C-\\><C-n><cmd>close<CR><C-w>h', { desc = 'Close terminal, move left' })
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><cmd>close<CR><C-w>j', { desc = 'Close terminal, move down' })
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><cmd>close<CR><C-w>k', { desc = 'Close terminal, move up' })
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><cmd>close<CR><C-w>l', { desc = 'Close terminal, move right' })

-- Split and pick a file to open
local function split_and_pick(split_cmd)
  return function()
    vim.cmd(split_cmd)
    local rel_dir = vim.fn.fnamemodify(vim.fn.expand '%:h', ':~:.')
    require('telescope.builtin').find_files { default_text = rel_dir .. '/' }
  end
end
vim.keymap.set('n', '<leader>sl', split_and_pick 'vsplit', { desc = '[S]plit right and pick file' })
vim.keymap.set('n', '<leader>sh', split_and_pick 'aboveleft vsplit', { desc = '[S]plit left and pick file' })
vim.keymap.set('n', '<leader>sj', split_and_pick 'split', { desc = '[S]plit below and pick file' })
vim.keymap.set('n', '<leader>sk', split_and_pick 'aboveleft split', { desc = '[S]plit above and pick file' })

-- Scroll half-page and center
vim.keymap.set('n', '<Left>', '<C-d>zz', { desc = 'Scroll down and center' })
vim.keymap.set('n', '<Down>', '<C-u>zz', { desc = 'Scroll up and center' })

-- Buffer navigation
vim.keymap.set('n', 'H', '<cmd>BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', 'L', '<cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>wo', '<cmd>bdelete<CR>', { desc = 'Close buffer' })

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- vim: ts=2 sts=2 sw=2 et
