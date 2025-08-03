function ColorMyPencils(color)
  if color then
    vim.cmd.colorscheme(color)
  else
    require('custom.colors.japandi-nightfall').setup()
  end

  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

ColorMyPencils()
