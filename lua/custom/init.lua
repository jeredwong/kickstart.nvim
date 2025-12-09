require 'custom.remap'
require 'custom.set'
require 'custom.colors'
require 'custom.lazy'

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

vim.api.nvim_create_autocmd('User', {
  pattern = 'VeryLazy',
  callback = function()
    require('custom.colors').set 'kanso-zen'
  end,
})

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Create toggle-able color column
function ToggleColorColumn()
  local current = vim.wo.colorcolumn
  if current == '' then
    vim.wo.colorcolumn = '80'
  else
    vim.wo.colorcolumn = ''
  end
end

vim.keymap.set('n', '<leader>tc', ToggleColorColumn, { desc = 'Toggle colorcolumn' })
