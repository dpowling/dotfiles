-- Phala Green Dark colorscheme for Neovim
-- Based on the Phala Green Dark terminal theme

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "phala-green-dark"
vim.o.termguicolors = true
vim.o.background = "dark"

local c = {
  -- Base
  -- bg = "#000000",
  bg = "#111811", -- statusline, pmenu
  fg = "#c1fc03",

  -- UI backgrounds
  bg1 = "#0a150a", -- cursorline
  bg2 = "#111811", -- statusline, pmenu
  bg3 = "#1a261a", -- floats, popups
  border = "#2a4a2a",

  -- Selection
  visual = "#014804",
  search = "#4a6a00",

  -- From terminal palette
  black = "#000000",
  red = "#ab1500",
  green = "#00b100",
  yellow = "#a9a700",
  blue = "#0223c0",
  magenta = "#c22ec0",
  cyan = "#00b4c0",
  gray = "#cbcbcb",

  dark_gray = "#797979",
  bright_red = "#ed2200",
  bright_green = "#00db00",
  bright_yellow = "#eae700",
  bright_blue = "#0433ff",
  bright_magenta = "#ed3aea",
  bright_cyan = "#00e8ea",
  white = "#eaeaea",

  -- Derived
  line_nr = "#3a5a00",
  cursor_text = "#ff271d",
  light_blue = "#5588dd",
  diff_add_bg = "#002800",
  diff_del_bg = "#280000",
  diff_change_bg = "#1a1a00",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hi("Normal", { fg = c.fg, bg = c.bg })
hi("NormalFloat", { fg = c.fg, bg = c.bg3 })
hi("NormalNC", { fg = c.fg, bg = c.bg })
hi("FloatBorder", { fg = c.border, bg = c.bg3 })
hi("FloatTitle", { fg = c.fg, bg = c.bg3, bold = true })
hi("Cursor", { fg = c.cursor_text, bg = c.fg })
hi("lCursor", { link = "Cursor" })
hi("CursorIM", { link = "Cursor" })
hi("CursorLine", { bg = c.bg1 })
hi("CursorColumn", { bg = c.bg1 })
hi("ColorColumn", { bg = c.bg1 })
hi("LineNr", { fg = c.line_nr })
hi("CursorLineNr", { fg = c.fg, bold = true })
hi("SignColumn", { fg = c.line_nr, bg = c.bg })
hi("FoldColumn", { fg = c.line_nr, bg = c.bg })
hi("Folded", { fg = c.dark_gray, bg = c.bg1 })
hi("VertSplit", { fg = c.border })
hi("WinSeparator", { fg = c.border })

-- Search & Selection
hi("Visual", { bg = c.visual })
hi("VisualNOS", { bg = c.visual })
hi("Search", { fg = c.black, bg = c.yellow })
hi("IncSearch", { fg = c.black, bg = c.fg })
hi("CurSearch", { fg = c.black, bg = c.bright_yellow })
hi("Substitute", { fg = c.black, bg = c.bright_red })

-- Statusline & Tabline
hi("StatusLine", { fg = c.fg, bg = c.bg2 })
hi("StatusLineNC", { fg = c.dark_gray, bg = c.bg1 })
hi("TabLine", { fg = c.dark_gray, bg = c.bg2 })
hi("TabLineFill", { bg = c.bg })
hi("TabLineSel", { fg = c.fg, bg = c.bg, bold = true })
hi("WinBar", { fg = c.fg, bg = c.bg })
hi("WinBarNC", { fg = c.dark_gray, bg = c.bg })

-- Popup menu
hi("Pmenu", { fg = c.fg, bg = c.bg2 })
hi("PmenuSel", { fg = c.black, bg = c.fg })
hi("PmenuSbar", { bg = c.bg3 })
hi("PmenuThumb", { bg = c.line_nr })

-- Messages
hi("MsgArea", { fg = c.fg })
hi("ModeMsg", { fg = c.fg, bold = true })
hi("MoreMsg", { fg = c.green })
hi("Question", { fg = c.green })
hi("ErrorMsg", { fg = c.bright_red })
hi("WarningMsg", { fg = c.bright_yellow })

-- Misc UI
hi("Title", { fg = c.fg, bold = true })
hi("Directory", { fg = c.green })
hi("NonText", { fg = c.border })
hi("SpecialKey", { fg = c.border })
hi("Conceal", { fg = c.dark_gray })
hi("MatchParen", { fg = c.bright_yellow, bold = true, underline = true })
hi("Whitespace", { fg = c.border })
hi("EndOfBuffer", { fg = c.bg })
hi("WildMenu", { fg = c.black, bg = c.fg })
hi("QuickFixLine", { bg = c.bg1 })

-- Diff
hi("DiffAdd", { bg = c.diff_add_bg })
hi("DiffChange", { bg = c.diff_change_bg })
hi("DiffDelete", { fg = c.red, bg = c.diff_del_bg })
hi("DiffText", { bg = "#2a2a00" })
hi("Added", { fg = c.green })
hi("Changed", { fg = c.yellow })
hi("Removed", { fg = c.red })

-- Spell
hi("SpellBad", { sp = c.bright_red, undercurl = true })
hi("SpellCap", { sp = c.bright_yellow, undercurl = true })
hi("SpellLocal", { sp = c.cyan, undercurl = true })
hi("SpellRare", { sp = c.magenta, undercurl = true })

-- Diagnostics
hi("DiagnosticError", { fg = c.bright_red })
hi("DiagnosticWarn", { fg = c.bright_yellow })
hi("DiagnosticInfo", { fg = c.light_blue })
hi("DiagnosticHint", { fg = c.cyan })
hi("DiagnosticOk", { fg = c.green })
hi("DiagnosticUnderlineError", { sp = c.bright_red, undercurl = true })
hi("DiagnosticUnderlineWarn", { sp = c.bright_yellow, undercurl = true })
hi("DiagnosticUnderlineInfo", { sp = c.light_blue, undercurl = true })
hi("DiagnosticUnderlineHint", { sp = c.cyan, undercurl = true })
hi("DiagnosticVirtualTextError", { fg = c.bright_red, bg = c.diff_del_bg })
hi("DiagnosticVirtualTextWarn", { fg = c.bright_yellow, bg = c.diff_change_bg })
hi("DiagnosticVirtualTextInfo", { fg = c.light_blue, bg = "#000a1a" })
hi("DiagnosticVirtualTextHint", { fg = c.cyan, bg = "#001a1a" })

-- Syntax (standard vim groups)
hi("Comment", { fg = c.dark_gray, italic = true })
hi("Constant", { fg = c.yellow })
hi("String", { fg = c.bright_green })
hi("Character", { fg = c.bright_green })
hi("Number", { fg = c.bright_yellow })
hi("Boolean", { fg = c.bright_magenta })
hi("Float", { fg = c.bright_yellow })

hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.bright_cyan })

hi("Statement", { fg = c.fg, bold = true })
hi("Conditional", { fg = c.fg, bold = true })
hi("Repeat", { fg = c.fg, bold = true })
hi("Label", { fg = c.fg })
hi("Operator", { fg = c.fg })
hi("Keyword", { fg = c.fg, bold = true })
hi("Exception", { fg = c.bright_red, bold = true })

hi("PreProc", { fg = c.bright_magenta })
hi("Include", { fg = c.bright_magenta })
hi("Define", { fg = c.bright_magenta })
hi("Macro", { fg = c.bright_magenta })
hi("PreCondit", { fg = c.bright_magenta })

hi("Type", { fg = c.bright_yellow })
hi("StorageClass", { fg = c.fg, bold = true })
hi("Structure", { fg = c.bright_yellow })
hi("Typedef", { fg = c.bright_yellow })

hi("Special", { fg = c.cyan })
hi("SpecialChar", { fg = c.cyan })
hi("Tag", { fg = c.fg })
hi("Delimiter", { fg = c.gray })
hi("SpecialComment", { fg = c.dark_gray, bold = true })
hi("Debug", { fg = c.bright_red })

hi("Underlined", { underline = true })
hi("Ignore", { fg = c.dark_gray })
hi("Error", { fg = c.bright_red })
hi("Todo", { fg = c.black, bg = c.fg, bold = true })

-- Treesitter
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.cyan })
hi("@variable.parameter", { fg = c.gray })
hi("@variable.member", { fg = c.fg })

hi("@constant", { fg = c.yellow })
hi("@constant.builtin", { fg = c.bright_yellow })
hi("@constant.macro", { fg = c.bright_magenta })

hi("@module", { fg = c.fg })
hi("@label", { fg = c.fg })

hi("@string", { fg = c.bright_green })
hi("@string.escape", { fg = c.cyan })
hi("@string.special", { fg = c.cyan })
hi("@string.regex", { fg = c.cyan })

hi("@character", { fg = c.bright_green })
hi("@number", { fg = c.bright_yellow })
hi("@boolean", { fg = c.bright_magenta })
hi("@float", { fg = c.bright_yellow })

hi("@function", { fg = c.bright_cyan })
hi("@function.builtin", { fg = c.bright_cyan })
hi("@function.call", { fg = c.bright_cyan })
hi("@function.macro", { fg = c.bright_magenta })

hi("@function.method", { fg = c.bright_cyan })
hi("@function.method.call", { fg = c.bright_cyan })

hi("@constructor", { fg = c.bright_yellow })

hi("@operator", { fg = c.fg })
hi("@keyword", { fg = c.fg, bold = true })
hi("@keyword.coroutine", { fg = c.fg, bold = true })
hi("@keyword.function", { fg = c.fg, bold = true })
hi("@keyword.operator", { fg = c.fg })
hi("@keyword.import", { fg = c.bright_magenta })
hi("@keyword.return", { fg = c.fg, bold = true })
hi("@keyword.exception", { fg = c.bright_red, bold = true })
hi("@keyword.conditional", { fg = c.fg, bold = true })
hi("@keyword.repeat", { fg = c.fg, bold = true })

hi("@type", { fg = c.bright_yellow })
hi("@type.builtin", { fg = c.bright_yellow })
hi("@type.qualifier", { fg = c.fg, bold = true })

hi("@attribute", { fg = c.yellow })
hi("@property", { fg = c.fg })

hi("@comment", { fg = c.dark_gray, italic = true })
hi("@comment.todo", { fg = c.black, bg = c.fg, bold = true })
hi("@comment.note", { fg = c.black, bg = c.light_blue, bold = true })
hi("@comment.warning", { fg = c.black, bg = c.bright_yellow, bold = true })
hi("@comment.error", { fg = c.black, bg = c.bright_red, bold = true })

hi("@punctuation.bracket", { fg = c.gray })
hi("@punctuation.delimiter", { fg = c.gray })
hi("@punctuation.special", { fg = c.cyan })

hi("@tag", { fg = c.fg, bold = true })
hi("@tag.attribute", { fg = c.bright_cyan })
hi("@tag.delimiter", { fg = c.gray })

hi("@markup.heading", { fg = c.fg, bold = true })
hi("@markup.strong", { bold = true })
hi("@markup.italic", { italic = true })
hi("@markup.strikethrough", { strikethrough = true })
hi("@markup.underline", { underline = true })
hi("@markup.link", { fg = c.bright_cyan, underline = true })
hi("@markup.link.url", { fg = c.cyan, underline = true })
hi("@markup.raw", { fg = c.bright_green })
hi("@markup.list", { fg = c.fg })

-- LSP semantic tokens
hi("@lsp.type.class", { link = "@type" })
hi("@lsp.type.decorator", { link = "@attribute" })
hi("@lsp.type.enum", { link = "@type" })
hi("@lsp.type.enumMember", { link = "@constant" })
hi("@lsp.type.function", { link = "@function" })
hi("@lsp.type.interface", { link = "@type" })
hi("@lsp.type.macro", { link = "@function.macro" })
hi("@lsp.type.method", { link = "@function.method" })
hi("@lsp.type.namespace", { link = "@module" })
hi("@lsp.type.parameter", { link = "@variable.parameter" })
hi("@lsp.type.property", { link = "@property" })
hi("@lsp.type.struct", { link = "@type" })
hi("@lsp.type.type", { link = "@type" })
hi("@lsp.type.typeParameter", { link = "@type" })
hi("@lsp.type.variable", { link = "@variable" })

-- Git signs
hi("GitSignsAdd", { fg = c.green })
hi("GitSignsChange", { fg = c.yellow })
hi("GitSignsDelete", { fg = c.red })

-- Telescope
hi("TelescopeNormal", { fg = c.fg, bg = c.bg })
hi("TelescopeBorder", { fg = c.border, bg = c.bg })
hi("TelescopePromptNormal", { fg = c.fg, bg = c.bg1 })
hi("TelescopePromptBorder", { fg = c.border, bg = c.bg1 })
hi("TelescopePromptTitle", { fg = c.black, bg = c.fg, bold = true })
hi("TelescopePreviewTitle", { fg = c.black, bg = c.green, bold = true })
hi("TelescopeResultsTitle", { fg = c.black, bg = c.cyan, bold = true })
hi("TelescopeSelection", { bg = c.bg1 })
hi("TelescopeMatching", { fg = c.bright_yellow, bold = true })

-- Snacks (dashboard, picker, etc.)
hi("SnacksDashboardHeader", { fg = c.fg })
hi("SnacksDashboardFooter", { fg = c.dark_gray })
hi("SnacksDashboardIcon", { fg = c.green })
hi("SnacksDashboardKey", { fg = c.bright_yellow })
hi("SnacksDashboardDesc", { fg = c.gray })
hi("SnacksDashboardTitle", { fg = c.fg, bold = true })
hi("SnacksPickerMatch", { fg = c.bright_yellow, bold = true })

-- nvim-cmp / blink.cmp
hi("CmpItemAbbr", { fg = c.fg })
hi("CmpItemAbbrMatch", { fg = c.bright_yellow, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = c.bright_yellow })
hi("CmpItemAbbrDeprecated", { fg = c.dark_gray, strikethrough = true })
hi("CmpItemKind", { fg = c.cyan })
hi("CmpItemMenu", { fg = c.dark_gray })

-- Indent guides
hi("IndentBlanklineChar", { fg = c.border, nocombine = true })
hi("IblIndent", { fg = c.border, nocombine = true })
hi("IblScope", { fg = c.line_nr, nocombine = true })
hi("MiniIndentscopeSymbol", { fg = c.line_nr })

-- Which-key
hi("WhichKey", { fg = c.fg })
hi("WhichKeyGroup", { fg = c.bright_cyan })
hi("WhichKeySeparator", { fg = c.dark_gray })
hi("WhichKeyDesc", { fg = c.gray })
hi("WhichKeyValue", { fg = c.dark_gray })

-- Trouble
hi("TroubleNormal", { fg = c.fg, bg = c.bg })
hi("TroubleText", { fg = c.fg })
hi("TroubleCount", { fg = c.bright_magenta })

-- Flash
hi("FlashLabel", { fg = c.black, bg = c.fg, bold = true })
hi("FlashMatch", { fg = c.bright_cyan })
hi("FlashCurrent", { fg = c.bright_yellow })

-- Notify
hi("NotifyERRORBorder", { fg = c.red })
hi("NotifyWARNBorder", { fg = c.yellow })
hi("NotifyINFOBorder", { fg = c.green })
hi("NotifyDEBUGBorder", { fg = c.dark_gray })
hi("NotifyTRACEBorder", { fg = c.magenta })
hi("NotifyERRORIcon", { fg = c.bright_red })
hi("NotifyWARNIcon", { fg = c.bright_yellow })
hi("NotifyINFOIcon", { fg = c.fg })
hi("NotifyDEBUGIcon", { fg = c.dark_gray })
hi("NotifyTRACEIcon", { fg = c.bright_magenta })
hi("NotifyERRORTitle", { fg = c.bright_red })
hi("NotifyWARNTitle", { fg = c.bright_yellow })
hi("NotifyINFOTitle", { fg = c.fg })
hi("NotifyDEBUGTitle", { fg = c.dark_gray })
hi("NotifyTRACETitle", { fg = c.bright_magenta })

-- Lazy.nvim
hi("LazyButton", { fg = c.fg, bg = c.bg2 })
hi("LazyButtonActive", { fg = c.black, bg = c.fg, bold = true })
hi("LazyH1", { fg = c.black, bg = c.fg, bold = true })

-- Bufferline (basic overrides, bufferline has its own theme system)
hi("BufferLineBackground", { fg = c.dark_gray, bg = c.bg })
hi("BufferLineBufferSelected", { fg = c.fg, bg = c.bg, bold = true })
hi("BufferLineBufferVisible", { fg = c.dark_gray, bg = c.bg })

-- Terminal colors
vim.g.terminal_color_0 = c.black
vim.g.terminal_color_1 = c.red
vim.g.terminal_color_2 = c.green
vim.g.terminal_color_3 = c.yellow
vim.g.terminal_color_4 = c.blue
vim.g.terminal_color_5 = c.magenta
vim.g.terminal_color_6 = c.cyan
vim.g.terminal_color_7 = c.gray
vim.g.terminal_color_8 = c.dark_gray
vim.g.terminal_color_9 = c.bright_red
vim.g.terminal_color_10 = c.bright_green
vim.g.terminal_color_11 = c.bright_yellow
vim.g.terminal_color_12 = c.bright_blue
vim.g.terminal_color_13 = c.bright_magenta
vim.g.terminal_color_14 = c.bright_cyan
vim.g.terminal_color_15 = c.white
