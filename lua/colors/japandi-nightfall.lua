-- Japandi Nightfall Theme for Neovim

local theme = {}

-- Base colors from VSCode theme
-- https://github.com/webhooked/japandi-theme/blob/main/themes/japandi-nightfall.json
local palette = {
  bg = '#131419',
  fg = '#FCFAF7',
  gray = '#46474F',
  comment = '#46474F',
  accent = '#E2CEB6',
  error = '#FF5C5C',
  warning = '#EDDBC2',
  info = '#FFD39F',
  hint = '#C1B6AE',
  keyword = '#C1B6AE',
  type = '#E2CEB6',
  constant = '#cbb394',
  string = '#FCFAF7',
  function_ = '#FFD39F',
  variable = '#FCFAF7',
  bracket = '#FCFAF7',
  link = '#479FFA',
  selection = '#59564F',
  cursorline = '#202025',
}

function theme.setup()
  vim.cmd 'highlight clear'
  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end
  vim.o.background = 'dark'
  vim.g.colors_name = 'japandi-nightfall'

  local set = vim.api.nvim_set_hl

  -- UI Elements
  set(0, 'Normal', { fg = palette.fg, bg = palette.bg })
  set(0, 'CursorLine', { bg = palette.cursorline })
  set(0, 'Visual', { bg = palette.selection })
  set(0, 'LineNr', { fg = '#32333B' })
  set(0, 'CursorLineNr', { fg = palette.fg })
  set(0, 'StatusLine', { fg = palette.fg, bg = palette.bg })
  set(0, 'VertSplit', { fg = palette.bg })
  set(0, 'Pmenu', { fg = palette.fg, bg = palette.cursorline })
  set(0, 'PmenuSel', { bg = palette.selection })
  set(0, 'WinSeparator', { fg = palette.bg })

  -- Syntax
  set(0, 'Comment', { fg = palette.comment, italic = true })
  set(0, 'Constant', { fg = palette.constant })
  set(0, 'String', { fg = palette.string })
  set(0, 'Function', { fg = palette.function_ })
  set(0, 'Identifier', { fg = palette.variable })
  set(0, 'Statement', { fg = palette.keyword })
  set(0, 'Keyword', { fg = palette.keyword })
  set(0, 'Type', { fg = palette.type })
  set(0, 'Special', { fg = palette.accent })
  set(0, 'Delimiter', { fg = palette.bracket })
  set(0, 'Operator', { fg = palette.keyword })
  set(0, 'Underlined', { fg = palette.link, underline = true })
  set(0, 'Todo', { fg = palette.warning, bold = true })

  -- Diagnostics
  set(0, 'DiagnosticError', { fg = palette.error })
  set(0, 'DiagnosticWarn', { fg = palette.warning })
  set(0, 'DiagnosticInfo', { fg = palette.info })
  set(0, 'DiagnosticHint', { fg = palette.hint })

  -- GitGutter / Signs
  set(0, 'GitSignsAdd', { fg = palette.fg })
  set(0, 'GitSignsChange', { fg = palette.accent })
  set(0, 'GitSignsDelete', { fg = palette.error })
end

return theme
