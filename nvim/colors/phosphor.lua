vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "phosphor"
vim.o.background = "dark"

local c = {
  bg        = "#0C1A0C",
  bg_soft   = "#111F11",
  bg_sel    = "#182E18",
  bg_line   = "#142014",
  bg_float  = "#0E1C0E",
  bg_popup  = "#0F1D0F",

  fg        = "#AECAAE",
  fg_dim    = "#789878",
  fg_dark   = "#466046",

  green_b   = "#5EC45E",
  green_m   = "#49A449",
  green_d   = "#377A37",

  cyan      = "#2EC4C8",
  magenta   = "#C440A0",
  yellow    = "#C4A030",
  orange    = "#CC7444",
  pink      = "#D84E90",
  blue      = "#5898C0",

  error     = "#C04040",
  warn      = "#C4A030",
  info      = "#5898C0",
  hint      = "#5EC45E",

  git_add   = "#49A449",
  git_mod   = "#5898C0",
  git_del   = "#C04040",

  none      = "NONE",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hi("Normal",          { fg = c.fg,      bg = c.bg })
hi("NormalFloat",     { fg = c.fg,      bg = c.bg_float })
hi("NormalNC",        { fg = c.fg_dim,  bg = c.bg })
hi("Cursor",          { fg = c.bg,      bg = c.cyan })
hi("CursorLine",      { bg = c.bg_line })
hi("CursorColumn",    { bg = c.bg_line })
hi("LineNr",          { fg = c.fg_dark })
hi("CursorLineNr",    { fg = c.green_m, bold = true })
hi("SignColumn",      { fg = c.fg_dark, bg = c.bg })
hi("ColorColumn",     { bg = c.bg_soft })
hi("VertSplit",       { fg = c.fg_dark, bg = c.bg })
hi("WinSeparator",    { fg = c.fg_dark, bg = c.bg })
hi("Folded",          { fg = c.fg_dim,  bg = c.bg_soft })
hi("FoldColumn",      { fg = c.fg_dark, bg = c.bg })
hi("EndOfBuffer",     { fg = c.bg_soft })
hi("Conceal",         { fg = c.fg_dark })

-- Selection / search
hi("Visual",          { bg = c.bg_sel })
hi("VisualNOS",       { bg = c.bg_sel })
hi("Search",          { fg = c.bg,      bg = c.yellow })
hi("IncSearch",       { fg = c.bg,      bg = c.cyan })
hi("CurSearch",       { fg = c.bg,      bg = c.cyan })
hi("Substitute",      { fg = c.bg,      bg = c.pink })

-- Statusline / tabline
hi("StatusLine",      { fg = c.fg,      bg = c.bg_soft })
hi("StatusLineNC",    { fg = c.fg_dim,  bg = c.bg_soft })
hi("TabLine",         { fg = c.fg_dim,  bg = c.bg_soft })
hi("TabLineSel",      { fg = c.fg,      bg = c.bg_sel })
hi("TabLineFill",     { bg = c.bg_soft })

-- Popup / completion
hi("Pmenu",           { fg = c.fg,      bg = c.bg_popup })
hi("PmenuSel",        { fg = c.fg,      bg = c.bg_sel })
hi("PmenuSbar",       { bg = c.bg_soft })
hi("PmenuThumb",      { bg = c.fg_dark })
hi("WildMenu",        { fg = c.bg,      bg = c.green_m })

-- Messages
hi("MsgArea",         { fg = c.fg_dim })
hi("ErrorMsg",        { fg = c.error })
hi("WarningMsg",      { fg = c.warn })
hi("MoreMsg",         { fg = c.green_m })
hi("Question",        { fg = c.cyan })
hi("Title",           { fg = c.green_b, bold = true })

-- Spelling
hi("SpellBad",        { undercurl = true, sp = c.error })
hi("SpellCap",        { undercurl = true, sp = c.warn })
hi("SpellRare",       { undercurl = true, sp = c.cyan })
hi("SpellLocal",      { undercurl = true, sp = c.yellow })

-- Diffs
hi("DiffAdd",         { fg = c.git_add, bg = "#0A210A" })
hi("DiffChange",      { fg = c.git_mod, bg = "#0A1B28" })
hi("DiffDelete",      { fg = c.git_del, bg = "#280A0A" })
hi("DiffText",        { fg = c.bg,      bg = c.git_mod })
hi("Added",           { fg = c.git_add })
hi("Changed",         { fg = c.git_mod })
hi("Removed",         { fg = c.git_del })

-- Syntax
hi("Comment",         { fg = c.fg_dark, italic = true })
hi("Constant",        { fg = c.orange })
hi("String",          { fg = c.yellow })
hi("Character",       { fg = c.yellow })
hi("Number",          { fg = c.orange })
hi("Boolean",         { fg = c.orange })
hi("Float",           { fg = c.orange })
hi("Identifier",      { fg = c.fg })
hi("Function",        { fg = c.green_b })
hi("Statement",       { fg = c.magenta })
hi("Conditional",     { fg = c.magenta })
hi("Repeat",          { fg = c.magenta })
hi("Label",           { fg = c.magenta })
hi("Operator",        { fg = c.fg_dim })
hi("Keyword",         { fg = c.magenta })
hi("Exception",       { fg = c.pink })
hi("PreProc",         { fg = c.cyan })
hi("Include",         { fg = c.cyan })
hi("Define",          { fg = c.cyan })
hi("Macro",           { fg = c.cyan })
hi("PreCondit",       { fg = c.cyan })
hi("Type",            { fg = c.cyan })
hi("StorageClass",    { fg = c.cyan })
hi("Structure",       { fg = c.cyan })
hi("Typedef",         { fg = c.cyan })
hi("Special",         { fg = c.pink })
hi("SpecialChar",     { fg = c.pink })
hi("Tag",             { fg = c.green_m })
hi("Delimiter",       { fg = c.fg_dim })
hi("SpecialComment",  { fg = c.fg_dim, italic = true })
hi("Underlined",      { underline = true })
hi("Ignore",          { fg = c.fg_dark })
hi("Error",           { fg = c.error, bold = true })
hi("Todo",            { fg = c.bg, bg = c.cyan, bold = true })

-- Treesitter
hi("@comment",                { link = "Comment" })
hi("@keyword",                { link = "Keyword" })
hi("@keyword.function",       { fg = c.magenta })
hi("@keyword.return",         { fg = c.pink })
hi("@keyword.operator",       { fg = c.magenta })
hi("@keyword.import",         { fg = c.cyan })
hi("@conditional",            { link = "Conditional" })
hi("@repeat",                 { link = "Repeat" })
hi("@function",               { link = "Function" })
hi("@function.builtin",       { fg = c.cyan })
hi("@function.method",        { fg = c.green_b })
hi("@function.call",          { fg = c.green_b })
hi("@method",                 { fg = c.green_b })
hi("@method.call",            { fg = c.green_b })
hi("@constructor",            { fg = c.cyan })
hi("@parameter",              { fg = c.fg })
hi("@variable",               { fg = c.fg })
hi("@variable.builtin",       { fg = c.cyan })
hi("@variable.member",        { fg = c.fg_dim })
hi("@field",                  { fg = c.fg_dim })
hi("@property",               { fg = c.fg_dim })
hi("@type",                   { link = "Type" })
hi("@type.builtin",           { fg = c.cyan })
hi("@namespace",              { fg = c.green_m })
hi("@module",                 { fg = c.green_m })
hi("@string",                 { link = "String" })
hi("@string.escape",          { fg = c.pink })
hi("@string.special",         { fg = c.pink })
hi("@number",                 { link = "Number" })
hi("@float",                  { link = "Float" })
hi("@boolean",                { link = "Boolean" })
hi("@constant",               { link = "Constant" })
hi("@constant.builtin",       { fg = c.cyan })
hi("@operator",               { link = "Operator" })
hi("@punctuation",            { fg = c.fg_dim })
hi("@punctuation.delimiter",  { fg = c.fg_dim })
hi("@punctuation.bracket",    { fg = c.fg_dim })
hi("@tag",                    { fg = c.green_m })
hi("@tag.attribute",          { fg = c.yellow })
hi("@tag.delimiter",          { fg = c.fg_dim })
hi("@label",                  { fg = c.cyan })

-- LSP
hi("LspReferenceText",        { bg = c.bg_sel })
hi("LspReferenceRead",        { bg = c.bg_sel })
hi("LspReferenceWrite",       { bg = c.bg_sel, underline = true })
hi("LspInlayHint",            { fg = c.fg_dark, italic = true })

-- Diagnostics
hi("DiagnosticError",         { fg = c.error })
hi("DiagnosticWarn",          { fg = c.warn })
hi("DiagnosticInfo",          { fg = c.info })
hi("DiagnosticHint",          { fg = c.hint })
hi("DiagnosticUnderlineError",{ undercurl = true, sp = c.error })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warn })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.info })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.hint })
hi("DiagnosticFloatingError", { fg = c.error })
hi("DiagnosticFloatingWarn",  { fg = c.warn })
hi("DiagnosticFloatingInfo",  { fg = c.info })
hi("DiagnosticFloatingHint",  { fg = c.hint })
hi("DiagnosticSignError",     { fg = c.error })
hi("DiagnosticSignWarn",      { fg = c.warn })
hi("DiagnosticSignInfo",      { fg = c.info })
hi("DiagnosticSignHint",      { fg = c.hint })

-- Gitsigns
hi("GitSignsAdd",             { fg = c.git_add })
hi("GitSignsChange",          { fg = c.git_mod })
hi("GitSignsDelete",          { fg = c.git_del })

-- NvimTree
hi("NvimTreeNormal",          { fg = c.fg,      bg = c.bg_soft })
hi("NvimTreeNormalNC",        { fg = c.fg_dim,  bg = c.bg_soft })
hi("NvimTreeRootFolder",      { fg = c.green_b, bold = true })
hi("NvimTreeFolderName",      { fg = c.green_m })
hi("NvimTreeOpenedFolderName",{ fg = c.green_b })
hi("NvimTreeFileName",        { fg = c.fg })
hi("NvimTreeSpecialFile",     { fg = c.pink })
hi("NvimTreeSymlink",         { fg = c.cyan })
hi("NvimTreeGitNew",          { fg = c.git_add })
hi("NvimTreeGitModified",     { fg = c.git_mod })
hi("NvimTreeGitDeleted",      { fg = c.git_del })

-- Telescope
hi("TelescopeBorder",         { fg = c.fg_dark })
hi("TelescopeNormal",         { fg = c.fg,      bg = c.bg_soft })
hi("TelescopePromptNormal",   { fg = c.fg,      bg = c.bg_sel })
hi("TelescopePromptBorder",   { fg = c.green_m })
hi("TelescopePromptTitle",    { fg = c.bg,      bg = c.green_m })
hi("TelescopeResultsTitle",   { fg = c.fg_dark })
hi("TelescopePreviewTitle",   { fg = c.bg,      bg = c.cyan })
hi("TelescopeSelection",      { fg = c.fg,      bg = c.bg_sel })
hi("TelescopeSelectionCaret", { fg = c.green_b })
hi("TelescopeMatching",       { fg = c.cyan,    bold = true })

-- Indent Blankline
hi("IblIndent",               { fg = "#1A2E1A" })
hi("IblScope",                { fg = "#264526" })

-- Snacks
hi("SnacksDashboardHeader",   { fg = c.green_b })
hi("SnacksDashboardFooter",   { fg = c.fg_dark })
hi("SnacksDashboardKey",      { fg = c.cyan })
hi("SnacksDashboardDesc",     { fg = c.fg_dim })
hi("SnacksDashboardIcon",     { fg = c.green_m })

-- CMP
hi("CmpItemAbbr",             { fg = c.fg })
hi("CmpItemAbbrDeprecated",   { fg = c.fg_dark, strikethrough = true })
hi("CmpItemAbbrMatch",        { fg = c.cyan,    bold = true })
hi("CmpItemAbbrMatchFuzzy",   { fg = c.cyan })
hi("CmpItemKind",             { fg = c.green_m })
hi("CmpItemMenu",             { fg = c.fg_dark })
