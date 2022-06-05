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
C.primary =         hsl(265, 15, 32) -- used for color mixing and tone
C.secondary =       hsl(50, 12, 32) -- used for backgrounds and color mixing
C.tertiary =        hsl(120, 8, 49) -- used for color mixing and tone

-- tertiary colors are used for data types and standard messaging
C.data =            hsl(280, 41, 54)
C.numbers =         hsl(176, 45, 40)
C.message =         hsl(77, 38, 37)

C.err =             hsl(350, 50, 55) -- reds
C.warn =            hsl(42, 56, 55) -- often yellow
C.important =       hsl(22, 53, 55) -- often oranges

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    PrimaryLightest   { fg = C.primary.lighten(50) },
    PrimaryLight      { fg = C.primary.lighten(30) },
    Primary           { fg = C.primary.saturate(20) },
    PrimaryDark       { fg = C.primary.darken(20) },
    PrimaryDarkest    { fg = C.primary.darken(50) },

    SecondaryLightest { fg = C.secondary.lighten(50) },
    SecondaryLight    { fg = C.secondary.lighten(30) },
    Secondary         { fg = C.secondary.saturate(20) },
    SecondaryDark     { fg = C.secondary.darken(20) },
    SecondaryDarkest  { fg = C.secondary.darken(50) },

    TertiaryLightest  { fg = C.tertiary.lighten(50) },
    TertiaryLight     { fg = C.tertiary.lighten(30) },
    Tertiary          { fg = C.tertiary },
    TertiaryDark      { fg = C.tertiary.darken(20) },
    TertiaryDarkest   { fg = C.tertiary.darken(50) },


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
    Normal          {}, -- Normal text
    NormalFloat     {}, -- Normal text in floating windows.
    NormalNC        {}, -- normal text in non-current windows
    Pmenu           {}, -- Popup menu: Normal item.
    PmenuSel        {}, -- Popup menu: Selected item.
    PmenuSbar       {}, -- Popup menu: Scrollbar.
    PmenuThumb      {}, -- Popup menu: Thumb of the scrollbar.
    ColorColumn     {}, -- Columns set with 'colorcolumn'
    Conceal         {}, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor          {}, -- Character under the cursor
    lCursor         {}, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM        {}, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn    {}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine      {}, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory       {}, -- Directory names (and other special names in listings)
    EndOfBuffer     {}, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor      {}, -- Cursor in a focused terminal
    TermCursorNC    {}, -- Cursor in an unfocused terminal
    ErrorMsg        {}, -- Error messages on the command line
    VertSplit       {}, -- Column separating vertically split windows
    -- Folded       { }, -- Line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    SignColumn      {}, -- Column where |signs| are displayed
    IncSearch       {}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute      {}, -- |:substitute| replacement text highlighting
    LineNr          {}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr    {}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen      {}, -- Character under the cursor or just before it, if it is a pa.err bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    NonText      {}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search       { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine   {  }, -- Status line of current window
    StatusLineNC {}, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      {}, -- Tab pages line, not active tab page label
    TabLineFill  {}, -- Tab pages line, where there are no labels
    TabLineSel   {}, -- Tab pages line, active tab page label
    Title        {}, -- Titles for output from ":set all", ":autocmd" etc.
    Visual       {}, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   {}, -- Warning messages
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

    Comment        {}, -- Any comment

    Constant       {}, -- (*) Any constant
    String         {}, --   A string constant: "this is a string"
    Character      {}, --   A character constant: 'c', '\n'
    Boolean        {}, --   A boolean constant: TRUE, false
    Number         {}, --   A number constant: 123, -1.23, 0x123, 0b1011
    Float          {}, --   A floating point constant: 2.3e10

    Identifier     {}, -- (*) Any variable name
    Function       {}, --   Function name (also: methods for classes)

    Statement      { Function }, -- (*) Any statement
    Conditional    { Function }, --   if, then, else, endif, switch, etc.
    Repeat         { Function }, --   for, do, while, etc.
    Keyword        {  }, --   any other keyword
    Label          {  }, --   case, default, etc.
    Operator       {  }, --   "sizeof", "+", "*", etc.
    Exception      {  }, --   try, catch, throw

    PreProc        {  }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           {  }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    Structure      {  }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special        {}, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { bg = C.err }, -- Any erroneous construct
    Todo           {  }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX


    -- Git related syntax groups
    Diff         {gui = "bold"},
    DiffChange   { Diff, fg = C.warn }, -- Diff mode: Changed line |diff.txt|
    DiffChanged  { Diff, fg = C.warn }, -- Diff mode: Changed line |diff.txt|
    DiffAdd      { Diff, fg = C.message }, -- Diff mode: Added line |diff.txt|
    DiffAdded    { Diff, fg = C.message }, -- Diff mode: Added line |diff.txt|
    DiffDelete   { Diff, fg = C.err.darken(20) }, -- Diff mode: Deleted line |diff.txt|
    DiffDeleted  { Diff, fg = C.err.darken(20) }, -- Diff mode: Deleted line |diff.txt|
    DiffText     { Diff, fg = C.err, gui = "bold" }, -- Diff mode: Changed text within a changed line |diff.txt|

    -- Language-based tags
    -- CSS
    cssProp {},
    cssAttrRegion {},

    -- HTML
    htmlTag {},
    htmlArg {},
    htmlSpecialTagName {},

    -- TypeScript
    typescriptEndColons {},
    typescriptTry        {},
    typescriptExceptions {},

    
    -- Sets the highlight for selected items within the picker.
    TelescopeSelection { Visual },
    TelescopeSelectionCaret { TelescopeSelection },
    TelescopeMultiSelection { Type },
    TelescopeMultiIcon { Identifier },

    -- Telescope syntax highlight-groups
    TelescopeNormal {  },
    TelescopePromptNormal {},
    TelescopeResultsNormal {},
    TelescopePreviewNormal {},

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

    TelescopePromptCounter { fg = C.secondary.lighten(20).saturate(50) },


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
    DiagnosticError            { fg = C.err } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = C.warn } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = PrimaryLight.fg.darken(20).saturate(40) } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = DiagnosticInfo.fg.rotate(-40) } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
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


local yokai = {
  normal = {
    c = { bg = C.primary.lighten(10).hex, fg = C.secondary.lighten(80).hex },
    b = { bg = C.primary.lighten(30).hex, fg = C.primary.lighten(20).hex },
    a = { bg = C.primary.hex, fg = C.primary.hex },
  },
  insert = {
    c = { bg = C.primary.lighten(10).hex, fg = C.secondary.lighten(80).hex },
    b = { bg = C.primary.lighten(30).hex, fg = C.primary.lighten(20).hex },
    a = { bg = C.primary.hex, fg = C.primary.hex },
  },
  visual = {
    c = { bg = C.primary.lighten(10).hex, fg = C.secondary.lighten(80).hex },
    b = { bg = C.primary.lighten(30).hex, fg = C.primary.lighten(20).hex },
    a = { bg = C.primary.hex, fg = C.primary.hex },
  },
  replace = {
    c = { bg = C.primary.lighten(10).hex, fg = C.secondary.lighten(80).hex },
    b = { bg = C.primary.lighten(30).hex, fg = C.primary.lighten(20).hex },
    a = { bg = C.primary.hex, fg = C.primary.hex },
  },
  command = {
    c = { bg = C.primary.lighten(10).hex, fg = C.secondary.lighten(80).hex },
    b = { bg = C.primary.lighten(30).hex, fg = C.primary.lighten(20).hex },
    a = { bg = C.primary.hex, fg = C.primary.hex },
  },
  inactive = {
    c = { bg = C.primary.lighten(10).hex, fg = C.secondary.lighten(80).hex },
    b = { bg = C.primary.lighten(30).hex, fg = C.primary.lighten(20).hex },
    a = { bg = C.primary.hex, fg = C.primary.hex },
  }
}

require('lualine').setup {options = {theme = yokai}}


return theme

-- vi:nowrap:cursorline:number
