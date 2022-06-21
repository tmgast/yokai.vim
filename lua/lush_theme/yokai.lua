--
-- Built with,
--
--       ,gggg,
--       d8" "8I                        ,dPYb,
--       88 ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg   ,g,     I8 dPgg,
-- ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,   ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_  ,d8b,  ,d8b,,8'_   8) ,d8     I8,
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
C.primary =         hsl(255, 25, 30) -- used for color mixing and tone
C.secondary =       hsl(200, 0, 72) -- used for backgrounds and color mixing
C.tertiary =        hsl(220, 38, 80) -- used for color mixing and tone

-- tertiary colors are used for data types and standard messaging
C.data =            hsl(280, 51, 64)
C.numbers =         hsl(176, 35, 40)
C.message =         hsl(77, 38, 57).rotate(30)

C.err =             hsl(350, 70, 55) -- reds
C.warn =            hsl(42, 76, 55) -- often yellow
C.important =       hsl(22, 73, 55) -- often oranges

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    PrimaryLightest   { fg = C.primary.saturate(30).lighten(60) },     -- PrimaryLightest
    PrimaryLight      { fg = C.primary.saturate(10).lighten(30) },     -- PrimaryLight
    Primary           { fg = C.primary.saturate(20) },    -- Primary
    PrimaryDark       { fg = C.primary.desaturate(10).darken(20) },      -- PrimaryDark
    PrimaryDarkest    { fg = C.primary.desaturate(20).darken(60) },      -- PrimaryDarkest

    SecondaryLightest { fg = C.secondary.saturate(30).lighten(60) },   -- SecondaryLightest
    SecondaryLight    { fg = C.secondary.saturate(10).lighten(30) },   -- SecondaryLight
    Secondary         { fg = C.secondary.saturate(20) },  -- Secondary
    SecondaryDark     { fg = C.secondary.desaturate(10).darken(20) },    -- SecondaryDark
    SecondaryDarkest  { fg = C.secondary.desaturate(20).darken(60) },    -- SecondaryDarkest

    TertiaryLightest  { fg = C.tertiary.saturate(30).lighten(60) },  -- TertiaryLightest
    TertiaryLight     { fg = C.tertiary.saturate(10).lighten(30) },  -- TertiaryLight
    Tertiary          { fg = C.tertiary },                           -- Tertiary
    TertiaryDark      { fg = C.tertiary.desaturate(10).darken(20) },   -- TertiaryDark
    TertiaryDarkest   { fg = C.tertiary.desaturate(20).darken(60) },   -- TertiaryDarkest

    DataLightest      { fg = C.data.desaturate(50) },   -- DataLightest
    DataLight         { fg = C.data.desaturate(20) },   -- DataLight
    Data              { fg = C.data },                  -- Data
    DataDeep          { fg = C.data.saturate(20) },     -- DataDeep
    DataDeepest       { fg = C.data.saturate(50) },     -- DataDeepest

    NumbersLightest   { fg = C.numbers.desaturate(50) },  -- NumbersLightest
    NumbersLight      { fg = C.numbers.desaturate(20) },  -- NumbersLight
    Numbers           { fg = C.numbers },                 -- Numbers
    NumbersDeep       { fg = C.numbers.saturate(20) },    -- NumbersDeep
    NumbersDeepest    { fg = C.numbers.saturate(50) },    -- NumbersDeepest

    MessageLightest   { fg = C.message.desaturate(50) },  -- MessageLightest
    MessageLight      { fg = C.message.desaturate(20) },  -- MessageLight
    Message           { fg = C.message },                 -- Message
    MessageDeep       { fg = C.message.saturate(20) },    -- MessageDeep
    MessageDeepest    { fg = C.message.saturate(50) },    -- MessageDeepest

    ErrLight        { fg = C.err.desaturate(40) },  -- ErrorLight
    Err             { fg = C.err },                -- Error
    ErrDeep         { fg = C.err.saturate(40) },   -- ErrorDeep

    WarnLight       { fg = C.warn.desaturate(40) }, -- WarningLight
    Warn            { fg = C.warn },               -- Warning
    WarnDeep        { fg = C.warn.saturate(40) },  -- WarningDeep

    ImportantLight  { fg = C.important.desaturate(40) }, -- ImportantLight
    Important       { fg = C.important },              -- Important
    ImportantDeep   { fg = C.important.saturate(40) },  -- ImportantDeep

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
    Normal          { SecondaryLightest, bg = PrimaryDarkest.fg.desaturate(40) }, -- Normal text
    NormalFloat     { SecondaryLightest }, -- Normal text in floating windows.
    NormalNC        { Normal }, -- normal text in non-current windows
    Visual          { bg = TertiaryDarkest.fg.mix(Normal.bg, 50) }, -- Visual mode selection
    VisualNOS       { Visual, fg = TertiaryDark.fg }, -- Visual mode selection when vim is "Not Owning the Selection".
    Pmenu           { SecondaryLight, bg = PrimaryDark.fg }, -- Popup menu: Normal item.
    PmenuSel        { SecondaryLightest, bg = SecondaryLight.fg.mix(Normal.bg, 70) }, -- Popup menu: Selected item.
    PmenuSbar       { Pmenu }, -- Popup menu: Scrollbar.
    PmenuThumb      { PmenuSel }, -- Popup menu: Thumb of the scrollbar.
    ColorColumn     { bg = SecondaryDark.fg.mix(Normal.bg, 80) }, -- Columns set with 'colorcolumn'
    Conceal         { Normal, gui = "bold" }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor          { fg = Normal.fg }, -- Character under the cursor
    lCursor         { Cursor }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM        { Cursor }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn    { ColorColumn }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine      { bg = ColorColumn.bg.darken(20) }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory       { fg = Tertiary.fg.saturate(50) }, -- Directory names (and other special names in listings)
    EndOfBuffer     { bg = PrimaryDarkest.fg, fg = PrimaryDarkest.fg.darken(20) }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor      { bg = PrimaryLightest.fg, fg = PrimaryDarkest.fg }, -- Cursor in a focused terminal
    TermCursorNC    { Normal }, -- Cursor in an unfocused terminal
    ErrorMsg        { fg = C.err }, -- Error messages on the command line
    VertSplit       { bg = TertiaryDarkest.fg.darken(60), fg = TertiaryDark.fg.darken(70) }, -- Column separating vertically split windows
    Folded          { bg = Normal.bg.lighten(15), fg = TertiaryDark.fg }, -- Line used for closed folds
    FoldColumn      { fg = TertiaryDarkest.fg }, -- 'foldcolumn'
    IncSearch       { bg = Secondary.fg, fg = TertiaryDarkest.fg }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute      { bg = Tertiary.fg, fg = TertiaryDarkest.fg }, -- |:substitute| replacement text highlighting
    SignColumn      { bg = Normal.bg.darken(10), fg = TertiaryDarkest.fg.darken(30) }, -- Column where |signs| are displayed
    LineNr          { SignColumn }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr    { SignColumn, fg = TertiaryLight.fg, gui = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen      { fg = CursorLineNr.fg, gui = "bold" }, -- Character under the cursor or just before it, if it is a pa.err bracket, and its match. |pi_paren.txt|
    ModeMsg         { MatchParen }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea         { SecondaryDark }, -- Area for messages and cmdline
    MsgSeparator    { MsgArea }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg         { TertiaryDark }, -- |more-prompt|
    NonText         { fg = TertiaryDarkest.fg }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Question        { MoreMsg }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine    { Visual, fg = TertiaryDark.fg }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search          { Visual, fg = TertiaryLightest.fg }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey      { TertiaryDark }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad        { gui = "underline" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap        { SpellBad }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal      { SpellBad }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare       { SpellBad }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine   { SecondaryLight }, -- Status line of current window
    StatusLineNC { SecondaryDark }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { PrimaryLight, bg = Normal.bg.darken(10) }, -- Tab pages line, not active tab page label
    TabLineFill  { bg = Normal.bg.darken(10) }, -- Tab pages line, where there are no labels
    TabLineSel   { bg = Primary.fg.desaturate(50), fg = SecondaryLightest.fg }, -- Tab pages line, active tab page label
    Title        { gui = "bold" }, -- Titles for output from ":set all", ":autocmd" etc.
    WarningMsg   { fg = ImportantDeep.fg.lighten(10) }, -- Warning messages
    Whitespace   { fg = TertiaryDarkest.fg.mix(PrimaryLightest.fg, 40).saturate(10), gui = "italic" }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator { VertSplit }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu     { Visual, fg = NormalFloat.fg }, -- Current match in 'wildmenu' completion


    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their prefe.err (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { Whitespace }, -- Any comment

    Constant       { DataDeep, gui = "bold" }, -- (*) Any constant
    String         { fg = MessageLight.fg.saturate(10) }, --   A string constant: "this is a string"
    Character      { String }, --   A character constant: 'c', '\n'
    Boolean        { DataDeep }, --   A boolean constant: TRUE, false
    Number         { fg = Numbers.fg }, --   A number constant: 123, -1.23, 0x123, 0b1011
    Float          { fg = NumbersDeepest.fg, gui = "bold"}, --   A floating point constant: 2.3e10

    Identifier     { fg = SecondaryDark.fg.saturate(100) }, -- (*) Any variable name
    Function       { PrimaryLightest }, --   Function name (also: methods for classes)

    Statement      { Function }, -- (*) Any statement
    Conditional    { Function }, --   if, then, else, endif, switch, etc.
    Repeat         { Function }, --   for, do, while, etc.
    Keyword        { Function }, --   any other keyword
    Label          { Function }, --   case, default, etc.
    Operator       { TertiaryLight }, --   "sizeof", "+", "*", etc.
    Exception      { ErrLight }, --   try, catch, throw

    PreProc        { Secondary }, -- (*) Generic Preprocessor
    Include        { PreProc }, --   Preprocessor #include
    Define         { PreProc }, --   Preprocessor #define
    Macro          { PreProc }, --   Same as Define
    PreCondit      { PreProc }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = TertiaryLight.fg.mix(SecondaryDark.fg, 50).saturate(70) }, -- (*) int, long, char, etc.
    StorageClass   { Type }, --   static, register, volatile, etc.
    Structure      { Type }, --   struct, union, enum, etc.
    Typedef        { Type }, --   A typedef

    Special        { fg = PrimaryLightest.fg.mix(TertiaryLight.fg, 60) }, -- (*) Any special symbol
    SpecialChar    { Special }, --   Special character in a constant
    Tag            { Special }, --   You can use CTRL-] on this
    Delimiter      { Special }, --   Character that needs attention
    SpecialComment { Special }, --   Special things inside a comment (e.g. '\n')
    Debug          { Special }, --   Debugging statements

    Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    Ignore         { fg = SecondaryDarkest.fg }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { ErrDeep }, -- Any erroneous construct
    Todo           { gui = "reverse" }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX


    -- Git related syntax groups
    DiffChange   { bg = WarnDeep.fg.mix(PrimaryDarkest.fg, 70),fg = WarnDeep.fg }, -- Diff mode: Changed line |diff.txt|
    DiffChanged  { fg = WarnDeep.fg }, -- Diff mode: Changed line |diff.txt|
    DiffAdd      { bg = MessageDeep.fg.mix(PrimaryDarkest.fg, 70), fg = MessageDeep.fg }, -- Diff mode: Added line |diff.txt|
    DiffAdded    { fg = MessageDeep.fg }, -- Diff mode: Added line |diff.txt|
    DiffDelete   { bg = ErrDeep.fg.mix(PrimaryDarkest.fg, 70), fg = ErrDeep.fg }, -- Diff mode: Deleted line |diff.txt|
    DiffDeleted  { fg = ErrDeep.fg }, -- Diff mode: Deleted line |diff.txt|
    DiffText     { bg = TertiaryDarkest.fg.mix(Normal.bg, 40) }, -- Diff mode: Changed text within a changed line |diff.txt|
    
    -- Sets the highlight for selected items within the picker.
    TelescopeSelection { Visual },
    TelescopeSelectionCaret { TelescopeSelection },
    TelescopeMultiSelection { Type },
    TelescopeMultiIcon { Identifier },

    -- Telescope syntax highlight-groups
    TelescopeNormal {  },
    TelescopePromptNormal { bg = PrimaryDark.fg },
    TelescopeResultsNormal { bg = PrimaryDarkest.fg },
    TelescopePreviewNormal { bg = PrimaryDarkest.fg.desaturate(10) },

    --   Otherwise set them specifically
    TelescopeBorder {  },
    TelescopePromptBorder { TelescopePromptNormal },
    TelescopeResultsBorder { TelescopeResultsNormal },
    TelescopePreviewBorder { TelescopePreviewNormal },

    -- Title highlight groups.
    TelescopeTitle { fg = C.tertiary.saturate(50) },
    TelescopePromptTitle { TelescopeTitle, bg = TelescopePromptNormal.bg },
    TelescopeResultsTitle { TelescopeTitle, bg = TelescopeResultsNormal.bg },
    TelescopePreviewTitle { TelescopeTitle, bg = TelescopePreviewNormal.bg },

    TelescopePromptCounter { DataDeep },

    -- Fidget LSP Progress
    FidgetTitle { fg = TertiaryDark.fg, gui="bold" },
    FidgetProgress { fg = SecondaryDark.fg, gui="italic" },

    DapBreakpoint { bg = TertiaryDarkest.fg.mix(Normal.bg, 70), fg = Err.fg, gui="bold" },
    DapLogPoint {DapStopped, fg = NumbersDeep.fg },
    DapStopped {DapBreakpoint, fg = MessageDeep.fg },

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { }, -- Used for highlighting "text" references
    -- LspReferenceRead            { }, -- Used for highlighting "read" references
    -- LspReferenceWrite           { }, -- Used for highlighting "write" references
    -- LspCodeLens                 { }, -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { }, -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { }, -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { Err }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { Warn }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { NumbersDeep }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { Message }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { }, -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { }, -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { }, -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { }, -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticUnderlineError   { }, -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { }, -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { }, -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { }, -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { }, -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { }, -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { }, -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { }, -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { }, -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { }, -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { }, -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { }, -- Used for "Hint" signs in sign column.

    -- Tree-Sitter syntax groups. Most link to corresponding
    -- vim syntax groups (e.g. TSKeyword => Keyword) by default.
    --
    -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    TSAttribute          { TertiaryDark }, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    TSBoolean            { Boolean, gui = "bold" }, -- Boolean literals: `True` and `False` in Python.
    TSCharacter          { Character }, -- Character literals: `'a'` in C.
    TSCharacterSpecial   { fg = Character.fg.mix(Numbers.fg, 50) }, -- Special characters.
    TSComment            { Comment }, -- Line comments and block comments.
    TSConditional        { Conditional }, -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    TSConstant           { Constant }, -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    TSConstBuiltin       { Constant, fg = Constant.fg.mix(MessageDeepest.fg, 20) }, -- Built-in constant values: `nil` in Lua.
    TSConstMacro         { Constant }, -- Constants defined by macros: `NULL` in C.
    TSConstructor        { Statement }, -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    TSDebug              { Debug }, -- Debugging statements.
    TSDefine             { TSAttribute }, -- Preprocessor #define statements.
    TSError              { Err }, -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    TSException          { ErrLight }, -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSField              { Secondary }, -- Object and struct fields.
    TSFloat              { NumbersLight }, -- Floating-point number literals.
    TSFunction           { Function }, -- Function calls and definitions.
    TSFuncBuiltin        { Function, fg = Function.fg.lighten(40) }, -- Built-in functions: `print` in Lua.
    TSFuncMacro          { TSFuncBuiltin, gui = "italic" }, -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    TSInclude            { TSAttribute }, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    TSKeyword            { fg = TSAttribute.fg.mix(Tertiary.fg, 80) }, -- Keywords that don't fit into other categories.
    TSKeywordFunction    { TSKeyword }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    TSKeywordOperator    { fg = Operator.fg.mix(Numbers.fg, 40) }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    TSKeywordReturn      { fg = TSFunction.fg.mix(Numbers.fg, 20) }, -- Keywords like `return` and `yield`.
    TSLabel              { TSKeyword }, -- GOTO labels: `label:` in C, and `::label::` in Lua.
    TSMethod             { TSFunction }, -- Method calls and definitions.
    TSNamespace          { TSFuncMacro }, -- Identifiers referring to modules and namespaces.
    TSNone               {}, -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    TSNumber             { NumbersDeep }, -- Numeric literals that don't fit into other categories.
    TSOperator           { TSKeywordOperator }, -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSParameter          { fg = Tertiary.fg.saturate(70) }, -- Parameters of a function.
    TSParameterReference { TSParameter }, -- References to parameters of a function.
    TSPreProc            { PreProc }, -- Preprocessor #if, #else, #endif, etc.
    TSProperty           { TSField }, -- Same as `TSField`.
    TSPunctDelimiter     { fg = TSFunction.fg.lighten(40) }, -- Punctuation delimiters: Periods, commas, semicolons, etc.
    TSPunctBracket       { TSPunctDelimiter }, -- Brackets, braces, parentheses, etc.
    TSPunctSpecial       { TSPunctDelimiter }, -- Special punctuation that doesn't fit into the previous categories.
    TSRepeat             { Repeat }, -- Keywords related to loops: `for`, `while`, etc.
    TSStorageClass       { StorageClass }, -- Keywords that affect how a variable is st.err: `static`, `comptime`, `extern`, etc.
    TSString             { String }, -- String literals.
    TSStringRegex        { fg = String.fg.mix(WarnLight.fg, 60) }, -- Regular expression literals.
    TSStringEscape       { TSStringRegex }, -- Escape characters within a string: `\n`, `\t`, etc.
    TSStringSpecial      { fg = TSStringRegex.fg.lighten(50) }, -- Strings with special meaning that don't fit into the previous categories.
    TSSymbol             { TSStringRegex }, -- Identifiers referring to symbols or atoms.
    TSTag                { TSFunction }, -- Tags like HTML tag names.
    TSTagAttribute       { TSAttribute }, -- HTML tag attributes.
    TSTagDelimiter       { TSTag }, -- Tag delimiters like `<` `>` `/`.
    TSText               { TSString }, -- Non-struct.err text. Like text in a markup language.
    TSStrong             { gui = "bold" }, -- Text to be represented in bold.
    TSEmphasis           { gui = "bold" }, -- Text to be represented with emphasis.
    TSUnderline          { gui = "underline" }, -- Text to be represented with an underline.
    TSStrike             { gui = "strikethrough" }, -- Strikethrough text.
    TSTitle              { Normal, gui = "italic" }, -- Text that is part of a title.
    TSLiteral            { Normal }, -- Literal or verbatim text.
    TSURI                { TertiaryDark, gui = "underline italic" }, -- URIs like hyperlinks or email addresses.
    TSMath               { TertiaryDark }, -- Math environments like LaTeX's `$ ... $`
    TSTextReference      { TSText }, -- Footnotes, text references, citations, etc.
    TSEnvironment        { TSText }, -- Text environments of markup languages.
    TSEnvironmentName    { TSAttribute }, -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    TSNote               { SecondaryDark }, -- Text representation of an informational note.
    TSWarning            { Function, gui = "reverse" }, -- Text representation of a warning note.
    TSDanger             { Err }, -- Text representation of a danger note.
    TSType               { TSAttribute }, -- Type (and class) definitions and annotations.
    TSTypeBuiltin        { TSAttribute }, -- Built-in types: `i32` in Rust.
    TSVariable           { Secondary }, -- Variable names that don't fit into other categories.
    TSVariableBuiltin    { fg = TertiaryDark.fg.saturate(90) }, -- Variable names defined by the language: `this` or `self` in Javascript.

  }
end)


local yokai = {
  normal = {
    c = { bg = C.secondary.darken(80).hex, fg = C.secondary.lighten(80).hex },
    b = { bg = C.secondary.darken(60).hex, fg = C.secondary.hex },
    a = { bg = C.secondary.darken(40).hex, fg = C.secondary.lighten(40).hex },
  },
  insert = {
    c = { bg = C.primary.darken(40).hex, fg = C.secondary.lighten(80).hex },
    b = { bg = C.primary.darken(10).hex, fg = C.primary.lighten(20).hex },
    a = { bg = C.primary.hex, fg = C.secondary.hex },
  },
  visual = {
    c = { bg = C.tertiary.darken(80).hex, fg = C.secondary.lighten(80).hex },
    b = { bg = C.tertiary.darken(60).hex, fg = C.tertiary.darken(10).hex },
    a = { bg = C.tertiary.darken(40).hex, fg = C.secondary.lighten(40).hex },
  },
  replace = {
    c = { bg = C.err.desaturate(30).darken(80).hex, fg = C.secondary.lighten(80).hex },
    b = { bg = C.err.desaturate(30).darken(50).hex, fg = C.err.desaturate(30).darken(20).hex },
    a = { bg = C.err.desaturate(30).darken(30).hex, fg = C.secondary.hex },
  },
  command = {
    c = { bg = C.important.desaturate(30).darken(80).hex, fg = C.secondary.lighten(80).hex },
    b = { bg = C.important.desaturate(30).darken(50).hex, fg = C.important.desaturate(30).darken(20).hex },
    a = { bg = C.important.desaturate(30).darken(30).hex, fg = C.secondary.hex },
  },
  inactive = {
    c = { bg = C.numbers.darken(80).hex, fg = C.secondary.lighten(80).hex },
    b = { bg = C.numbers.darken(60).hex, fg = C.numbers.lighten(10).hex },
    a = { bg = C.numbers.darken(40).hex, fg = C.secondary.hex },
  }
}

require('lualine').setup {options = {theme = yokai}}


return theme

-- vi:nowrap:cursorline:number
