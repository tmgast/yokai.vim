--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local C = {}
-- primary colors are the main drivers behind the theme concept
C.primary_light = hsl(225, 86, 95) -- used for main text and important info
C.primary =       hsl(268, 18, 53) -- used for color mixing and tone
C.primary_dark =  hsl(298, 8, 8) -- used for backgrounds and mixing de-emphasized text

-- secondary colors are used for emphasis and tone
C.secondary_light = hsl(37, 56, 71) -- used for text emphasis
C.secondary =       hsl(22, 45, 52) -- used for backgrounds and color mixing

-- tertiary colors are used for data types and standard messaging
C.data =            hsl(331, 41, 54).mix( C.primary_light, 40) -- typically blue or purple
C.numbers =         hsl(176, 41, 60).mix( C.primary_light, 20) -- typically blue
C.message =         hsl(77, 38, 37).mix( C.primary_light, 10 ) -- typically green
C.err =             hsl(350, 80, 55) -- reds
C.warn =            hsl(42, 76, 55) -- often yellow
C.important =       hsl(22, 73, 55) -- often oranges

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    Normal       { bg = C.primary_dark, fg = C.primary_light.darken(10).desaturate(20) }, -- Normal text
    NormalFloat  { bg = Normal.bg.lighten(10).desaturate(10) }, -- Normal text in floating windows.
    NormalNC     { fg = Normal.fg.darken(30).desaturate(80) }, -- normal text in non-current windows
    Pmenu        { bg = Normal.bg.lighten(5).desaturate(10), fg = Normal.fg.lighten(10).saturate(20) }, -- Popup menu: Normal item.
    PmenuSel     { bg = Pmenu.bg.lighten(10).desaturate(10), fg = Pmenu.fg.lighten(10) }, -- Popup menu: Selected item.
    PmenuSbar    { bg = Pmenu.bg.darken(10) }, -- Popup menu: Scrollbar.
    PmenuThumb   { bg = PmenuSbar.bg.lighten(20).desaturate(20) }, -- Popup menu: Thumb of the scrollbar.
    ColorColumn  { bg = Normal.bg.lighten(3).desaturate(30) }, -- Columns set with 'colorcolumn'
    Conceal      { bg = C.secondary.darken(50).desaturate(30), fg = C.secondary_light }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { bg = Normal.fg, fg = Normal.bg }, -- Character under the cursor
    lCursor      { Cursor }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { Cursor }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { bg = Normal.bg.lighten(4) }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = Normal.bg.lighten(6) }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { fg = C.secondary_light.lighten(10) }, -- Directory names (and other special names in listings)
    DiffChange   { bg = C.warn.mix(Normal.bg, 40), fg = Normal.bg }, -- Diff mode: Changed line |diff.txt|
    DiffAdd      { bg = C.message.mix(Normal.bg, 10), fg = DiffChange.fg }, -- Diff mode: Added line |diff.txt|
    DiffDelete   { bg = C.err.mix(Normal.bg, 30), fg = DiffChange.fg }, -- Diff mode: Deleted line |diff.txt|
    DiffText     { bg = C.err.mix(Normal.bg, 10), fg = DiffChange.fg }, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { bg = Normal.bg.darken(5), fg = Normal.fg.darken(10).desaturate(10) }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor   { bg = Normal.fg, fg = Normal.bg }, -- Cursor in a focused terminal
    TermCursorNC { bg = TermCursor.bg.darken(60).desaturate(60), fg = TermCursor.fg }, -- Cursor in an unfocused terminal
    ErrorMsg     { bg = C.err }, -- Error messages on the command line
    VertSplit    { bg = C.primary.darken(50).desaturate(10) }, -- Column separating vertically split windows
    -- Folded       { }, -- Line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    SignColumn   { bg = Normal.bg.darken(20) }, -- Column where |signs| are displayed
    IncSearch    { bg = C.warn.mix(Normal.bg, 30), gui="italic" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { bg = C.important.mix(Normal.bg, 10), gui="bold" }, -- |:substitute| replacement text highlighting
    LineNr       { bg = SignColumn.bg, fg = C.warn.mix(Normal.fg, 10).desaturate(40).darken(50) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { bg = LineNr.bg.lighten(10).saturate(15), fg = LineNr.fg.lighten(40).saturate(55) }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { bg = Normal.bg.darken(5), fg = C.secondary.saturate(20) }, -- Character under the cursor or just before it, if it is a pa.err bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    -- NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search       { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine   { bg = C.primary, fg = C.primary_dark }, -- Status line of current window
    StatusLineNC { bg = StatusLine.bg.darken(40), fg = StatusLine.fg.darken(20) }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { bg = Normal.bg.lighten(10), fg = Normal.fg.darken(20) }, -- Tab pages line, not active tab page label
    TabLineFill  { TabLine }, -- Tab pages line, where there are no labels
    TabLineSel   { bg = C.primary_light.darken(20), fg = C.secondary.darken(30) }, -- Tab pages line, active tab page label
    Title        { Normal, gui = "bold" }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = C.secondary_light.mix(Normal.bg, 80).desaturate(20), fg = Normal.fg.darken(15) }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = C.warn, gui = "italic" }, -- Warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu     { }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their prefe.err (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = C.primary.darken(15).desaturate(20), gui = "italic" }, -- Any comment

    Constant       { fg = C.data, gui = "bold italic" }, -- (*) Any constant
    String         { fg = C.message.lighten(40) }, --   A string constant: "this is a string"
    Character      { fg = String.fg.darken(25).saturate(80) }, --   A character constant: 'c', '\n'
    Boolean        { Constant, fg = C.secondary.saturate(30).lighten(20) }, --   A boolean constant: TRUE, false
    Number         { fg = C.numbers }, --   A number constant: 123, -1.23, 0x123, 0b1011
    Float          { fg = Number.fg.saturate(50).lighten(20), gui = "italic" }, --   A floating point constant: 2.3e10

    Identifier     { fg = C.primary.saturate(50).mix(C.secondary_light, 50).lighten(50) }, -- (*) Any variable name
    Function       { fg = C.primary_light.darken(15).saturate(25) }, --   Function name (also: methods for classes)

    Statement      { fg = C.primary.lighten(40).saturate(60) }, -- (*) Any statement
    Conditional    { fg = C.primary_light.mix(C.primary_dark, 25) }, --   if, then, else, endif, switch, etc.
    Repeat         { Conditional }, --   for, do, while, etc.
    Keyword        { fg = C.data.mix(Conditional.fg, 30).darken(10), gui = "italic" }, --   any other keyword
    Label          { Keyword, gui = "" }, --   case, default, etc.
    Operator       { fg = Conditional.fg.darken(10), gui = "italic" }, --   "sizeof", "+", "*", etc.
    Exception      { fg = C.err.mix(Conditional.fg, 10) }, --   try, catch, throw

    PreProc        { fg = C.secondary_light.desaturate(10).lighten(10) }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = C.secondary_light.mix(Normal.fg, 10).saturate(60) }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    Structure      { fg = C.secondary_light }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special        { fg = C.primary.mix(Normal.fg, 70) }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { bg = C.err, fg = Normal.fg }, -- Any erroneous construct
    Todo           { bg = Normal.bg.mix(IncSearch.bg, 10).lighten(20), fg = Normal.fg.darken(10) }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- Language-based tags
    -- CSS
    cssProp { fg = C.primary_dark.lighten(50).saturate(20) },
    cssAttrRegion { fg = cssProp.fg.lighten(60).rotate(-100) },

    -- HTML
    htmlTag { fg = C.primary.lighten(50).saturate(20) },
    htmlArg { fg = htmlTag.fg.darken(15).rotate(20) },
    htmlSpecialTagName { htmlTag },

    -- TypeScript
    typescriptEndColons { Normal },

    
    -- Sets the highlight for selected items within the picker.
    TelescopeSelection { Visual },
    TelescopeSelectionCaret { TelescopeSelection },
    TelescopeMultiSelection { Type },
    TelescopeMultiIcon { Identifier },

    -- Telescope syntax highlight-groups
    TelescopeNormal {  },
    TelescopePromptNormal { bg = Normal.bg.lighten(6) },
    TelescopeResultsNormal { bg = Normal.bg.lighten(3) },
    TelescopePreviewNormal { bg = Normal.bg.lighten(2) },

    --   Otherwise set them specifically
    TelescopeBorder {  },
    TelescopePromptBorder { TelescopePromptNormal },
    TelescopeResultsBorder { TelescopeResultsNormal },
    TelescopePreviewBorder { TelescopePreviewNormal },

    -- Title highlight groups.
    TelescopeTitle { fg = C.data.saturate(50) },
    TelescopePromptTitle { TelescopeTitle, bg = TelescopePromptNormal.bg },
    TelescopeResultsTitle { TelescopeTitle, bg = TelescopeResultsNormal.bg },
    TelescopePreviewTitle { TelescopeTitle, bg = TelescopePreviewNormal.bg },

    TelescopePromptCounter { fg = C.secondary.lighten(20).saturate(50) },

    -- LuaLine syntax highlight-groups
    lualine_a_normal { bg = C.primary, fg = C.primary_dark.darken(10) },
    lualine_b_normal { bg = lualine_a_normal.fg.lighten(5) ,fg = lualine_a_normal.bg },
    lualine_c_normal { bg = lualine_b_normal.bg, fg = Normal.fg.darken(20).desaturate(50) },

    lualine_a_insert {},
    lualine_b_insert {},
    lualine_c_insert {},

    lualine_a_visual {},
    lualine_b_visual {},
    lualine_c_visual {},

    lualine_a_command {},
    lualine_a_replace {},

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = C.err, gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = C.warn.lighten(30), gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = C.primary_light.darken(15).saturate(30) } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = C.important.lighten(20), gui = "italic" } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

    -- Tree-Sitter syntax groups. Most link to corresponding
    -- vim syntax groups (e.g. TSKeyword => Keyword) by default.
    --
    -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- TSAttribute          { } , -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    -- TSBoolean            { } , -- Boolean literals: `True` and `False` in Python.
    -- TSCharacter          { } , -- Character literals: `'a'` in C.
    -- TSCharacterSpecial   { } , -- Special characters.
    -- TSComment            { } , -- Line comments and block comments.
    -- TSConditional        { } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    -- TSConstant           { } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    -- TSConstBuiltin       { } , -- Built-in constant values: `nil` in Lua.
    -- TSConstMacro         { } , -- Constants defined by macros: `NULL` in C.
    -- TSConstructor        { } , -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    -- TSDebug              { } , -- Debugging statements.
    -- TSDefine             { } , -- Preprocessor #define statements.
    -- TSError              { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    -- TSException          { } , -- Exception related keywords: `try`, `except`, `finally` in Python.
    -- TSField              { } , -- Object and struct fields.
    -- TSFloat              { } , -- Floating-point number literals.
    -- TSFunction           { } , -- Function calls and definitions.
    -- TSFuncBuiltin        { } , -- Built-in functions: `print` in Lua.
    -- TSFuncMacro          { } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { } , -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    -- TSKeyword            { } , -- Keywords that don't fit into other categories.
    -- TSKeywordFunction    { } , -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    -- TSKeywordOperator    { } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    -- TSKeywordReturn      { } , -- Keywords like `return` and `yield`.
    -- TSLabel              { } , -- GOTO labels: `label:` in C, and `::label::` in Lua.
    -- TSMethod             { } , -- Method calls and definitions.
    -- TSNamespace          { } , -- Identifiers referring to modules and namespaces.
    -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    -- TSNumber             { } , -- Numeric literals that don't fit into other categories.
    -- TSOperator           { } , -- Binary or unary operators: `+`, and also `->` and `*` in C.
    -- TSParameter          { } , -- Parameters of a function.
    -- TSParameterReference { } , -- References to parameters of a function.
    -- TSPreProc            { } , -- Preprocessor #if, #else, #endif, etc.
    -- TSProperty           { } , -- Same as `TSField`.
    -- TSPunctDelimiter     { } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
    -- TSPunctBracket       { } , -- Brackets, braces, parentheses, etc.
    -- TSPunctSpecial       { } , -- Special punctuation that doesn't fit into the previous categories.
    -- TSRepeat             { } , -- Keywords related to loops: `for`, `while`, etc.
    -- TSStorageClass       { } , -- Keywords that affect how a variable is st.err: `static`, `comptime`, `extern`, etc.
    -- TSString             { } , -- String literals.
    -- TSStringRegex        { } , -- Regular expression literals.
    -- TSStringEscape       { } , -- Escape characters within a string: `\n`, `\t`, etc.
    -- TSStringSpecial      { } , -- Strings with special meaning that don't fit into the previous categories.
    -- TSSymbol             { } , -- Identifiers referring to symbols or atoms.
    -- TSTag                { } , -- Tags like HTML tag names.
    -- TSTagAttribute       { } , -- HTML tag attributes.
    -- TSTagDelimiter       { } , -- Tag delimiters like `<` `>` `/`.
    -- TSText               { } , -- Non-struct.err text. Like text in a markup language.
    -- TSStrong             { } , -- Text to be represented in bold.
    -- TSEmphasis           { } , -- Text to be represented with emphasis.
    -- TSUnderline          { } , -- Text to be represented with an underline.
    -- TSStrike             { } , -- Strikethrough text.
    -- TSTitle              { } , -- Text that is part of a title.
    -- TSLiteral            { } , -- Literal or verbatim text.
    -- TSURI                { } , -- URIs like hyperlinks or email addresses.
    -- TSMath               { } , -- Math environments like LaTeX's `$ ... $`
    -- TSTextReference      { } , -- Footnotes, text references, citations, etc.
    -- TSEnvironment        { } , -- Text environments of markup languages.
    -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    -- TSNote               { } , -- Text representation of an informational note.
    -- TSWarning            { } , -- Text representation of a warning note.
    -- TSDanger             { } , -- Text representation of a danger note.
    -- TSType               { } , -- Type (and class) definitions and annotations.
    -- TSTypeBuiltin        { } , -- Built-in types: `i32` in Rust.
    -- TSVariable           { } , -- Variable names that don't fit into other categories.
    -- TSVariableBuiltin    { } , -- Variable names defined by the language: `this` or `self` in Javascript.
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
