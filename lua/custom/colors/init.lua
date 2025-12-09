local M = {}

function M.set(color)
  if color then
    vim.cmd.colorscheme(color)
  else
    require('custom.colors.japandi-nightfall').setup()
  end

  -- transparent background
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

return M
