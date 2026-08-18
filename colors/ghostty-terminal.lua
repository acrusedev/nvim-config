vim.opt.termguicolors = false
vim.opt.background = 'dark'

vim.cmd 'highlight clear'

if vim.fn.exists 'syntax_on' == 1 then
  vim.cmd 'syntax reset'
end

vim.g.colors_name = 'ghostty-terminal'

local hi = vim.api.nvim_set_hl

local function set(group, opts)
  hi(0, group, opts)
end

-- ANSI palette index reference:
-- 0 black
-- 1 red
-- 2 green
-- 3 yellow
-- 4 blue
-- 5 magenta
-- 6 cyan
-- 7 white
-- 8 bright black / gray
-- 9 bright red
-- 10 bright green
-- 11 bright yellow
-- 12 bright blue
-- 13 bright magenta
-- 14 bright cyan
-- 15 bright white

-- Base
set('Normal', {})
set('NormalNC', {})
set('NormalFloat', {})
set('FloatBorder', { ctermfg = 8 })
set('FloatTitle', { ctermfg = 15 })

-- Syntax: old Vim groups
set('Comment', { ctermfg = 8, italic = true })

set('Constant', { ctermfg = 6 })
set('String', { ctermfg = 2 })
set('Character', { ctermfg = 2 })
set('Number', { ctermfg = 3 })
set('Boolean', { ctermfg = 3 })
set('Float', { ctermfg = 3 })

set('Identifier', {})
set('Function', { ctermfg = 4 })

set('Statement', { ctermfg = 5 })
set('Conditional', { ctermfg = 5 })
set('Repeat', { ctermfg = 5 })
set('Label', { ctermfg = 5 })
set('Operator', { ctermfg = 5 })
set('Keyword', { ctermfg = 5 })
set('Exception', { ctermfg = 1 })

set('PreProc', { ctermfg = 6 })
set('Include', { ctermfg = 5 })
set('Define', { ctermfg = 5 })
set('Macro', { ctermfg = 6 })
set('PreCondit', { ctermfg = 5 })

set('Type', { ctermfg = 3 })
set('StorageClass', { ctermfg = 5 })
set('Structure', { ctermfg = 3 })
set('Typedef', { ctermfg = 3 })

set('Special', { ctermfg = 6 })
set('SpecialChar', { ctermfg = 6 })
set('Tag', { ctermfg = 4 })
set('Delimiter', {})
set('SpecialComment', { ctermfg = 8 })
set('Debug', { ctermfg = 1 })

set('Underlined', { ctermfg = 4, underline = true })
set('Ignore', { ctermfg = 8 })
set('Error', { ctermfg = 15, ctermbg = 1 })
set('Todo', { ctermfg = 0, ctermbg = 11 })

-- Editor UI
set('Cursor', { ctermfg = 0, ctermbg = 15 })
set('CursorLine', {})
set('CursorColumn', {})
set('ColorColumn', { ctermbg = 0 })

set('LineNr', { ctermfg = 8 })
set('CursorLineNr', { ctermfg = 11 })
set('SignColumn', {})
set('FoldColumn', { ctermfg = 8 })
set('Folded', { ctermfg = 8 })

set('Visual', { ctermbg = 8 })
set('VisualNOS', { ctermbg = 8 })

set('Search', { ctermfg = 0, ctermbg = 11 })
set('IncSearch', { ctermfg = 0, ctermbg = 3 })
set('CurSearch', { ctermfg = 0, ctermbg = 3 })

set('Pmenu', {})
set('PmenuSel', { ctermfg = 0, ctermbg = 4 })
set('PmenuSbar', {})
set('PmenuThumb', { ctermbg = 8 })
set('WildMenu', { ctermfg = 0, ctermbg = 4 })

set('StatusLine', { ctermfg = 15 })
set('StatusLineNC', { ctermfg = 8 })
set('TabLine', { ctermfg = 8 })
set('TabLineFill', {})
set('TabLineSel', { ctermfg = 15, ctermbg = 4 })
set('WinSeparator', { ctermfg = 8 })
set('VertSplit', { ctermfg = 8 })

set('Directory', { ctermfg = 4 })
set('Title', { ctermfg = 6 })
set('Question', { ctermfg = 2 })
set('MoreMsg', { ctermfg = 2 })
set('ModeMsg', { ctermfg = 3 })
set('NonText', { ctermfg = 8 })
set('SpecialKey', { ctermfg = 8 })
set('Whitespace', { ctermfg = 8 })

-- Diffs
set('DiffAdd', { ctermfg = 2 })
set('DiffChange', { ctermfg = 3 })
set('DiffDelete', { ctermfg = 1 })
set('DiffText', { ctermfg = 4 })

set('Added', { ctermfg = 2 })
set('Changed', { ctermfg = 3 })
set('Removed', { ctermfg = 1 })

-- Diagnostics
set('DiagnosticError', { ctermfg = 1 })
set('DiagnosticWarn', { ctermfg = 3 })
set('DiagnosticInfo', { ctermfg = 4 })
set('DiagnosticHint', { ctermfg = 6 })
set('DiagnosticOk', { ctermfg = 2 })

set('DiagnosticUnderlineError', { underline = true })
set('DiagnosticUnderlineWarn', { underline = true })
set('DiagnosticUnderlineInfo', { underline = true })
set('DiagnosticUnderlineHint', { underline = true })
set('DiagnosticUnderlineOk', { underline = true })

set('MatchParen', { ctermfg = 0, ctermbg = 6 })

set('SpellBad', { ctermfg = 1, underline = true })
set('SpellCap', { ctermfg = 4, underline = true })
set('SpellLocal', { ctermfg = 6, underline = true })
set('SpellRare', { ctermfg = 5, underline = true })

-- Git signs
set('GitSignsAdd', { ctermfg = 2 })
set('GitSignsChange', { ctermfg = 3 })
set('GitSignsDelete', { ctermfg = 1 })

-- Tree-sitter captures
set('@comment', { link = 'Comment' })

set('@constant', { ctermfg = 6 })
set('@constant.builtin', { ctermfg = 6 })
set('@constant.macro', { ctermfg = 6 })
set('@string', { ctermfg = 2 })
set('@string.escape', { ctermfg = 6 })
set('@string.special', { ctermfg = 6 })
set('@character', { ctermfg = 2 })
set('@number', { ctermfg = 3 })
set('@boolean', { ctermfg = 3 })
set('@float', { ctermfg = 3 })

set('@variable', {})
set('@variable.builtin', { ctermfg = 1 })
set('@variable.parameter', {})
set('@variable.member', {})

-- Older tree-sitter compatibility
set('@field', {})
set('@property', {})

set('@function', { ctermfg = 4 })
set('@function.builtin', { ctermfg = 4 })
set('@function.call', { ctermfg = 4 })
set('@function.method', { ctermfg = 4 })
set('@function.method.call', { ctermfg = 4 })
set('@constructor', { ctermfg = 3 })

set('@keyword', { ctermfg = 5 })
set('@keyword.function', { ctermfg = 5 })
set('@keyword.conditional', { ctermfg = 5 })
set('@keyword.repeat', { ctermfg = 5 })
set('@keyword.import', { ctermfg = 5 })
set('@keyword.operator', { ctermfg = 5 })
set('@keyword.return', { ctermfg = 5 })
set('@keyword.exception', { ctermfg = 1 })

set('@operator', { ctermfg = 5 })

set('@type', { ctermfg = 3 })
set('@type.builtin', { ctermfg = 3 })
set('@type.definition', { ctermfg = 3 })

set('@module', { ctermfg = 6 })
set('@namespace', { ctermfg = 6 })

set('@label', { ctermfg = 5 })
set('@tag', { ctermfg = 4 })
set('@tag.attribute', { ctermfg = 6 })
set('@tag.delimiter', { ctermfg = 8 })

set('@punctuation', {})
set('@punctuation.bracket', {})
set('@punctuation.delimiter', {})
set('@punctuation.special', { ctermfg = 6 })

set('@markup.heading', { ctermfg = 4 })
set('@markup.strong', {})
set('@markup.italic', { italic = true })
set('@markup.link', { ctermfg = 4, underline = true })
set('@markup.raw', { ctermfg = 2 })

set('@diff.plus', { ctermfg = 2 })
set('@diff.delta', { ctermfg = 3 })
set('@diff.minus', { ctermfg = 1 })

-- LSP semantic tokens
set('@lsp.type.comment', { link = '@comment' })
set('@lsp.type.enum', { link = '@type' })
set('@lsp.type.enumMember', { link = '@constant' })
set('@lsp.type.function', { link = '@function' })
set('@lsp.type.interface', { link = '@type' })
set('@lsp.type.keyword', { link = '@keyword' })
set('@lsp.type.macro', { link = '@constant.macro' })
set('@lsp.type.method', { link = '@function.method' })
set('@lsp.type.namespace', { link = '@module' })
set('@lsp.type.number', { link = '@number' })
set('@lsp.type.operator', { link = '@operator' })
set('@lsp.type.parameter', { link = '@variable.parameter' })
set('@lsp.type.property', { link = '@property' })
set('@lsp.type.string', { link = '@string' })
set('@lsp.type.struct', { link = '@type' })
set('@lsp.type.type', { link = '@type' })
set('@lsp.type.typeParameter', { link = '@type' })
set('@lsp.type.variable', { link = '@variable' })
