" _________________________________________
" YOKAI
"
" File:       yokai.vim
" Maintainer: cocopon <cocopon@me.com>
" Modified:   2022-03-15 21:20+0900
" License:    MIT


if !has('gui_running') && &t_Co < 256
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'yokai'

if &background == 'light'
  hi Normal ctermbg=254 ctermfg=237 guibg=#e8e9ec guifg=#33374c
  hi ColorColumn cterm=NONE ctermbg=253 ctermfg=NONE guibg=#dcdfe7 guifg=NONE
  hi CursorColumn cterm=NONE ctermbg=253 ctermfg=NONE guibg=#dcdfe7 guifg=NONE
  hi CursorLine cterm=NONE ctermbg=253 ctermfg=NONE guibg=#dcdfe7 guifg=NONE
  hi Comment ctermfg=244 guifg=#8389a3
  hi Conceal ctermbg=254 ctermfg=244 guibg=#e8e9ec guifg=#8389a3
  hi Constant ctermfg=97 guifg=#7759b4
  hi Cursor ctermbg=237 ctermfg=254 guibg=#33374c guifg=#e8e9ec
  hi CursorLineNr cterm=NONE ctermbg=251 ctermfg=237 guibg=#cad0de guifg=#576a9e
  hi Delimiter ctermfg=237 guifg=#33374c
  hi DiffAdd ctermbg=79 ctermfg=23 guibg=#d4dbd1 guifg=#475946
  hi DiffChange ctermbg=116 ctermfg=24 guibg=#ced9e1 guifg=#375570
  hi DiffDelete cterm=NONE ctermbg=181 ctermfg=89 gui=NONE guibg=#e3d2da guifg=#70415e
  hi DiffText cterm=NONE ctermbg=73 ctermfg=24 gui=NONE guibg=#acc5d3 guifg=#33374c
  hi Directory ctermfg=31 guifg=#3f83a6
  hi Error ctermbg=254 ctermfg=125 guibg=#e8e9ec guifg=#cc517a
  hi ErrorMsg ctermbg=254 ctermfg=125 guibg=#e8e9ec guifg=#cc517a
  hi WarningMsg ctermbg=254 ctermfg=125 guibg=#e8e9ec guifg=#cc517a
  hi EndOfBuffer ctermfg=251 guifg=#cbcfda
  hi NonText ctermfg=251 guifg=#cbcfda
  hi Whitespace ctermfg=251 guifg=#cbcfda
  hi Folded ctermbg=253 ctermfg=243 guibg=#dcdfe7 guifg=#788098
  hi FoldColumn ctermbg=253 ctermfg=248 guibg=#dcdfe7 guifg=#9fa7bd
  hi Function ctermfg=25 guifg=#2d539e
  hi Identifier cterm=NONE ctermfg=31 guifg=#3f83a6
  hi Ignore ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
  hi Include ctermfg=25 guifg=#2d539e
  hi IncSearch cterm=reverse ctermfg=NONE gui=reverse guifg=NONE term=reverse
  hi LineNr ctermbg=253 ctermfg=248 guibg=#dcdfe7 guifg=#9fa7bd
  hi MatchParen ctermbg=250 ctermfg=0 guibg=#bec0c9 guifg=#33374c
  hi ModeMsg ctermfg=244 guifg=#8389a3
  hi MoreMsg ctermfg=64 guifg=#668e3d
  hi Operator ctermfg=25 guifg=#2d539e
  hi Pmenu ctermbg=251 ctermfg=237 guibg=#cad0de guifg=#33374c
  hi PmenuSbar ctermbg=251 ctermfg=NONE guibg=#cad0de guifg=NONE
  hi PmenuSel ctermbg=248 ctermfg=235 guibg=#a7b2cd guifg=#33374c
  hi PmenuThumb ctermbg=237 ctermfg=NONE guibg=#33374c guifg=NONE
  hi PreProc ctermfg=64 guifg=#668e3d
  hi Question ctermfg=64 guifg=#668e3d
  hi QuickFixLine ctermbg=251 ctermfg=237 guibg=#c9cdd7 guifg=#33374c
  hi Search ctermbg=180 ctermfg=94 guibg=#eac6ad guifg=#85512c
  hi SignColumn ctermbg=253 ctermfg=248 guibg=#dcdfe7 guifg=#9fa7bd
  hi Special ctermfg=64 guifg=#668e3d
  hi SpecialKey ctermfg=248 guifg=#a5b0d3
  hi SpellBad ctermbg=181 ctermfg=237 gui=undercurl guifg=NONE guisp=#cc517a
  hi SpellCap ctermbg=117 ctermfg=237 gui=undercurl guifg=NONE guisp=#2d539e
  hi SpellLocal ctermbg=116 ctermfg=237 gui=undercurl guifg=NONE guisp=#3f83a6
  hi SpellRare ctermbg=110 ctermfg=237 gui=undercurl guifg=NONE guisp=#7759b4
  hi Statement ctermfg=25 gui=NONE guifg=#2d539e
  hi StatusLine cterm=reverse ctermbg=252 ctermfg=243 gui=reverse guibg=#e8e9ec guifg=#757ca3 term=reverse
  hi StatusLineTerm cterm=reverse ctermbg=252 ctermfg=243 gui=reverse guibg=#e8e9ec guifg=#757ca3 term=reverse
  hi StatusLineNC cterm=reverse ctermbg=244 ctermfg=251 gui=reverse guibg=#8b98b6 guifg=#cad0de
  hi StatusLineTermNC cterm=reverse ctermbg=244 ctermfg=251 gui=reverse guibg=#8b98b6 guifg=#cad0de
  hi StorageClass ctermfg=25 guifg=#2d539e
  hi String ctermfg=64 guifg=#668e3d
  hi Structure ctermfg=25 guifg=#2d539e
  hi TabLine cterm=NONE ctermbg=251 ctermfg=244 gui=NONE guibg=#cad0de guifg=#8b98b6
  hi TabLineFill cterm=reverse ctermbg=244 ctermfg=251 gui=reverse guibg=#8b98b6 guifg=#cad0de
  hi TabLineSel cterm=NONE ctermbg=254 ctermfg=237 gui=NONE guibg=#e8e9ec guifg=#606374
  hi TermCursorNC ctermbg=244 ctermfg=254 guibg=#8389a3 guifg=#e8e9ec
  hi Title ctermfg=130 gui=NONE guifg=#c57339
  hi Todo ctermbg=254 ctermfg=64 guibg=#d4dbd1 guifg=#668e3d
  hi Type ctermfg=25 gui=NONE guifg=#2d539e
  hi Underlined cterm=underline ctermfg=25 gui=underline guifg=#2d539e term=underline
  hi VertSplit cterm=NONE ctermbg=251 ctermfg=251 gui=NONE guibg=#cad0de guifg=#cad0de
  hi Visual ctermbg=251 ctermfg=NONE guibg=#c9cdd7 guifg=NONE
  hi VisualNOS ctermbg=251 ctermfg=NONE guibg=#c9cdd7 guifg=NONE
  hi WildMenu ctermbg=235 ctermfg=252 guibg=#32364c guifg=#e8e9ec
  hi yokaiNormalFg ctermfg=237 guifg=#33374c
  hi diffAdded ctermfg=64 guifg=#668e3d
  hi diffRemoved ctermfg=125 guifg=#cc517a
  hi ALEErrorSign ctermbg=253 ctermfg=125 guibg=#dcdfe7 guifg=#cc517a
  hi ALEWarningSign ctermbg=253 ctermfg=130 guibg=#dcdfe7 guifg=#c57339
  hi ALEVirtualTextError ctermfg=125 guifg=#cc517a
  hi ALEVirtualTextWarning ctermfg=130 guifg=#c57339
  hi CtrlPMode1 ctermbg=247 ctermfg=252 guibg=#9fa6c0 guifg=#e8e9ec
  hi EasyMotionShade ctermfg=250 guifg=#bbbecd
  hi EasyMotionTarget ctermfg=64 guifg=#668e3d
  hi EasyMotionTarget2First ctermfg=130 guifg=#c57339
  hi EasyMotionTarget2Second ctermfg=130 guifg=#c57339
  hi GitGutterAdd ctermbg=253 ctermfg=64 guibg=#dcdfe7 guifg=#668e3d
  hi GitGutterChange ctermbg=253 ctermfg=31 guibg=#dcdfe7 guifg=#3f83a6
  hi GitGutterChangeDelete ctermbg=253 ctermfg=31 guibg=#dcdfe7 guifg=#3f83a6
  hi GitGutterDelete ctermbg=253 ctermfg=125 guibg=#dcdfe7 guifg=#cc517a
  hi gitmessengerEndOfBuffer ctermbg=253 ctermfg=248 guibg=#dcdfe7 guifg=#9fa7bd
  hi gitmessengerPopupNormal ctermbg=253 ctermfg=237 guibg=#dcdfe7 guifg=#33374c
  hi Sneak ctermbg=97 ctermfg=254 guibg=#7759b4 guifg=#e8e9ec
  hi SneakScope ctermbg=251 ctermfg=244 guibg=#c9cdd7 guifg=#8389a3
  hi SyntasticErrorSign ctermbg=253 ctermfg=125 guibg=#dcdfe7 guifg=#cc517a
  hi SyntasticStyleErrorSign ctermbg=253 ctermfg=125 guibg=#dcdfe7 guifg=#cc517a
  hi SyntasticStyleWarningSign ctermbg=253 ctermfg=130 guibg=#dcdfe7 guifg=#c57339
  hi SyntasticWarningSign ctermbg=253 ctermfg=130 guibg=#dcdfe7 guifg=#c57339
  hi TSFunction ctermfg=237 guifg=#505695
  hi TSFunctionBuiltin ctermfg=237 guifg=#505695
  hi TSFunctionMacro ctermfg=237 guifg=#505695
  hi TSMethod ctermfg=237 guifg=#505695
  hi TSURI cterm=underline ctermfg=31 gui=underline guifg=#3f83a6 term=underline
  hi ZenSpace ctermbg=125 guibg=#cc517a
  hi DiagnosticUnderlineInfo cterm=underline ctermfg=31 gui=underline guisp=#3f83a6 term=underline
  hi DiagnosticInfo ctermfg=31 guifg=#3f83a6
  hi DiagnosticSignInfo ctermbg=253 ctermfg=31 guibg=#dcdfe7 guifg=#3f83a6
  hi DiagnosticUnderlineHint cterm=underline ctermfg=244 gui=underline guisp=#8389a3 term=underline
  hi DiagnosticHint ctermfg=244 guifg=#8389a3
  hi DiagnosticSignHint ctermbg=253 ctermfg=244 guibg=#dcdfe7 guifg=#8389a3
  hi DiagnosticUnderlineWarn cterm=underline ctermfg=130 gui=underline guisp=#c57339 term=underline
  hi DiagnosticWarn ctermfg=130 guifg=#c57339
  hi DiagnosticSignWarn ctermbg=253 ctermfg=130 guibg=#dcdfe7 guifg=#c57339
  hi DiagnosticUnderlineError cterm=underline ctermfg=125 gui=underline guisp=#cc517a term=underline
  hi DiagnosticError ctermfg=125 guifg=#cc517a
  hi DiagnosticSignError ctermbg=253 ctermfg=125 guibg=#dcdfe7 guifg=#cc517a
  hi DiagnosticFloatingHint ctermbg=251 ctermfg=237 guibg=#cad0de guifg=#33374c
  hi yokaiALAccentRed ctermfg=125 guifg=#cc517a

  if has('nvim')
    let g:terminal_color_0 = '#dcdfe7'
    let g:terminal_color_1 = '#cc517a'
    let g:terminal_color_2 = '#668e3d'
    let g:terminal_color_3 = '#c57339'
    let g:terminal_color_4 = '#2d539e'
    let g:terminal_color_5 = '#7759b4'
    let g:terminal_color_6 = '#3f83a6'
    let g:terminal_color_7 = '#33374c'
    let g:terminal_color_8 = '#8389a3'
    let g:terminal_color_9 = '#cc3768'
    let g:terminal_color_10 = '#598030'
    let g:terminal_color_11 = '#b6662d'
    let g:terminal_color_12 = '#22478e'
    let g:terminal_color_13 = '#6845ad'
    let g:terminal_color_14 = '#327698'
    let g:terminal_color_15 = '#262a3f'
  else
    let g:terminal_ansi_colors = ['#dcdfe7', '#cc517a', '#668e3d', '#c57339', '#2d539e', '#7759b4', '#3f83a6', '#33374c', '#8389a3', '#cc3768', '#598030', '#b6662d', '#22478e', '#6845ad', '#327698', '#262a3f']
  endif
else
  hi Normal ctermbg=234 ctermfg=252 guibg=#0e0e0b guifg=#d1d1c6
  hi ColorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=#1d1d14 guifg=NONE
  hi CursorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=#1d1d14 guifg=NONE
  hi CursorLine cterm=NONE ctermbg=235 ctermfg=NONE guibg=#1d1d14 guifg=NONE
  hi Comment ctermfg=242 guifg=#89896b
  hi Conceal ctermbg=234 ctermfg=242 guibg=#0e0e0b guifg=#89896b
  hi Constant ctermfg=140 guifg=#9e87c4
  hi Cursor ctermbg=252 ctermfg=234 guibg=#d1d1c6 guifg=#0e0e0b
  hi CursorLineNr cterm=NONE ctermbg=237 ctermfg=253 guibg=#404023 guifg=#d9d9bb
  hi Delimiter ctermfg=252 guifg=#d1d1c6
  hi DiffAdd ctermbg=29 ctermfg=158 guibg=#213e2a guifg=#a9c6ad
  hi DiffChange ctermbg=23 ctermfg=159 guibg=#3d4246 guifg=#c5cac9
  hi DiffDelete cterm=NONE ctermbg=95 ctermfg=224 gui=NONE guibg=#311d1c guifg=#baa59f
  hi DiffText cterm=NONE ctermbg=30 ctermfg=195 gui=NONE guibg=#6c7682 guifg=#d1d1c6
  hi Directory ctermfg=109 guifg=#acbcd2
  hi Error ctermbg=234 ctermfg=203 guibg=#0e0e0b guifg=#864044
  hi ErrorMsg ctermbg=234 ctermfg=203 guibg=#0e0e0b guifg=#864044
  hi WarningMsg ctermbg=234 ctermfg=203 guibg=#0e0e0b guifg=#864044
  hi EndOfBuffer ctermfg=236 guifg=#2a2a1c
  hi NonText ctermfg=236 guifg=#2a2a1c
  hi Whitespace ctermfg=236 guifg=#2a2a1c
  hi Folded ctermbg=235 ctermfg=245 guibg=#1d1d14 guifg=#808062
  hi FoldColumn ctermbg=235 ctermfg=239 guibg=#1d1d14 guifg=#59593d
  hi Function ctermfg=110 guifg=#6086b7
  hi Identifier cterm=NONE ctermfg=109 guifg=#acbcd2
  hi Ignore ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
  hi Include ctermfg=110 guifg=#6086b7
  hi IncSearch cterm=reverse ctermfg=NONE gui=reverse guifg=NONE term=reverse
  hi LineNr ctermbg=235 ctermfg=239 guibg=#1d1d14 guifg=#59593d
  hi MatchParen ctermbg=237 ctermfg=255 guibg=#474737 guifg=#ffffff
  hi ModeMsg ctermfg=242 guifg=#89896b
  hi MoreMsg ctermfg=150 guifg=#4faf75
  hi Operator ctermfg=110 guifg=#6086b7
  hi Pmenu ctermbg=236 ctermfg=251 guibg=#5b5b3d guifg=#d1d1c6
  hi PmenuSbar ctermbg=236 ctermfg=NONE guibg=#5b5b3d guifg=NONE
  hi PmenuSel ctermbg=240 ctermfg=255 guibg=#89895b guifg=#f4f4ef
  hi PmenuThumb ctermbg=251 ctermfg=NONE guibg=#d1d1c6 guifg=NONE
  hi PreProc ctermfg=150 guifg=#4faf75
  hi Question ctermfg=150 guifg=#4faf75
  hi QuickFixLine ctermbg=236 ctermfg=252 guibg=#2c2c1f guifg=#d1d1c6
  hi Search ctermbg=216 ctermfg=234 guibg=#e49680 guifg=#391b13
  hi SignColumn ctermbg=235 ctermfg=239 guibg=#1d1d14 guifg=#59593d
  hi Special ctermfg=150 guifg=#4faf75
  hi SpecialKey ctermfg=240 guifg=#7c7c4f
  hi SpellBad ctermbg=95 ctermfg=252 gui=undercurl guifg=NONE guisp=#864044
  hi SpellCap ctermbg=24 ctermfg=252 gui=undercurl guifg=NONE guisp=#6086b7
  hi SpellLocal ctermbg=23 ctermfg=252 gui=undercurl guifg=NONE guisp=#acbcd2
  hi SpellRare ctermbg=97 ctermfg=252 gui=undercurl guifg=NONE guisp=#9e87c4
  hi Statement ctermfg=110 gui=NONE guifg=#6086b7
  hi StatusLine cterm=reverse ctermbg=234 ctermfg=245 gui=reverse guibg=#1b1b17 guifg=#969681 term=reverse
  hi StatusLineTerm cterm=reverse ctermbg=234 ctermfg=245 gui=reverse guibg=#1b1b17 guifg=#969681 term=reverse
  hi StatusLineNC cterm=reverse ctermbg=238 ctermfg=233 gui=reverse guibg=#474737 guifg=#050504
  hi StatusLineTermNC cterm=reverse ctermbg=238 ctermfg=233 gui=reverse guibg=#474737 guifg=#050504
  hi StorageClass ctermfg=110 guifg=#6086b7
  hi String ctermfg=150 guifg=#4faf75
  hi Structure ctermfg=110 guifg=#6086b7
  hi TabLine cterm=NONE ctermbg=233 ctermfg=238 gui=NONE guibg=#050504 guifg=#474737
  hi TabLineFill cterm=reverse ctermbg=238 ctermfg=233 gui=reverse guibg=#474737 guifg=#050504
  hi TabLineSel cterm=NONE ctermbg=234 ctermfg=252 gui=NONE guibg=#0e0e0b guifg=#a0a097
  hi TermCursorNC ctermbg=242 ctermfg=234 guibg=#89896b guifg=#0e0e0b
  hi Title ctermfg=216 gui=NONE guifg=#f17f5f
  hi Todo ctermbg=234 ctermfg=150 guibg=#213e2a guifg=#4faf75
  hi Type ctermfg=110 gui=NONE guifg=#6086b7
  hi Underlined cterm=underline ctermfg=110 gui=underline guifg=#6086b7 term=underline
  hi VertSplit cterm=NONE ctermbg=233 ctermfg=233 gui=NONE guibg=#050504 guifg=#050504
  hi Visual ctermbg=236 ctermfg=NONE guibg=#2c2c1f guifg=NONE
  hi VisualNOS ctermbg=236 ctermfg=NONE guibg=#2c2c1f guifg=NONE
  hi WildMenu ctermbg=255 ctermfg=234 guibg=#dbdbd4 guifg=#1b1b17
  hi yokaiNormalFg ctermfg=252 guifg=#d1d1c6
  hi diffAdded ctermfg=150 guifg=#4faf75
  hi diffRemoved ctermfg=203 guifg=#864044
  hi ALEErrorSign ctermbg=235 ctermfg=203 guibg=#1d1d14 guifg=#864044
  hi ALEWarningSign ctermbg=235 ctermfg=216 guibg=#1d1d14 guifg=#f17f5f
  hi ALEVirtualTextError ctermfg=203 guifg=#864044
  hi ALEVirtualTextWarning ctermfg=216 guifg=#f17f5f
  hi CtrlPMode1 ctermbg=236 ctermfg=242 guibg=#323226 guifg=#89896b
  hi EasyMotionShade ctermfg=239 guifg=#5b5b3d
  hi EasyMotionTarget ctermfg=150 guifg=#4faf75
  hi EasyMotionTarget2First ctermfg=216 guifg=#f17f5f
  hi EasyMotionTarget2Second ctermfg=216 guifg=#f17f5f
  hi GitGutterAdd ctermbg=235 ctermfg=150 guibg=#1d1d14 guifg=#4faf75
  hi GitGutterChange ctermbg=235 ctermfg=109 guibg=#1d1d14 guifg=#acbcd2
  hi GitGutterChangeDelete ctermbg=235 ctermfg=109 guibg=#1d1d14 guifg=#acbcd2
  hi GitGutterDelete ctermbg=235 ctermfg=203 guibg=#1d1d14 guifg=#864044
  hi gitmessengerEndOfBuffer ctermbg=235 ctermfg=239 guibg=#1d1d14 guifg=#59593d
  hi gitmessengerPopupNormal ctermbg=235 ctermfg=252 guibg=#1d1d14 guifg=#d1d1c6
  hi Sneak ctermbg=140 ctermfg=234 guibg=#9e87c4 guifg=#0e0e0b
  hi SneakScope ctermbg=236 ctermfg=242 guibg=#2c2c1f guifg=#89896b
  hi SyntasticErrorSign ctermbg=235 ctermfg=203 guibg=#1d1d14 guifg=#864044
  hi SyntasticStyleErrorSign ctermbg=235 ctermfg=203 guibg=#1d1d14 guifg=#864044
  hi SyntasticStyleWarningSign ctermbg=235 ctermfg=216 guibg=#1d1d14 guifg=#f17f5f
  hi SyntasticWarningSign ctermbg=235 ctermfg=216 guibg=#1d1d14 guifg=#f17f5f
  hi TSFunction ctermfg=252 guifg=#bdb8ac
  hi TSFunctionBuiltin ctermfg=252 guifg=#bdb8ac
  hi TSFunctionMacro ctermfg=252 guifg=#bdb8ac
  hi TSMethod ctermfg=252 guifg=#bdb8ac
  hi TSURI cterm=underline ctermfg=109 gui=underline guifg=#acbcd2 term=underline
  hi ZenSpace ctermbg=203 guibg=#864044
  hi DiagnosticUnderlineInfo cterm=underline ctermfg=109 gui=underline guisp=#acbcd2 term=underline
  hi DiagnosticInfo ctermfg=109 guifg=#acbcd2
  hi DiagnosticSignInfo ctermbg=235 ctermfg=109 guibg=#1d1d14 guifg=#acbcd2
  hi DiagnosticUnderlineHint cterm=underline ctermfg=242 gui=underline guisp=#89896b term=underline
  hi DiagnosticHint ctermfg=242 guifg=#89896b
  hi DiagnosticSignHint ctermbg=235 ctermfg=242 guibg=#1d1d14 guifg=#89896b
  hi DiagnosticUnderlineWarn cterm=underline ctermfg=216 gui=underline guisp=#f17f5f term=underline
  hi DiagnosticWarn ctermfg=216 guifg=#f17f5f
  hi DiagnosticSignWarn ctermbg=235 ctermfg=216 guibg=#1d1d14 guifg=#f17f5f
  hi DiagnosticUnderlineError cterm=underline ctermfg=203 gui=underline guisp=#864044 term=underline
  hi DiagnosticError ctermfg=203 guifg=#864044
  hi DiagnosticSignError ctermbg=235 ctermfg=203 guibg=#1d1d14 guifg=#864044
  hi DiagnosticFloatingHint ctermbg=236 ctermfg=251 guibg=#5b5b3d guifg=#d1d1c6
  hi yokaiALAccentRed ctermfg=203 guifg=#864044

  if has('nvim')
    let g:terminal_color_0 = '#1d1d14'
    let g:terminal_color_1 = '#864044'
    let g:terminal_color_2 = '#4faf75'
    let g:terminal_color_3 = '#f17f5f'
    let g:terminal_color_4 = '#6086b7'
    let g:terminal_color_5 = '#9e87c4'
    let g:terminal_color_6 = '#acbcd2'
    let g:terminal_color_7 = '#d1d1c6'
    let g:terminal_color_8 = '#89896b'
    let g:terminal_color_9 = '#9c4247'
    let g:terminal_color_10 = '#5abd81'
    let g:terminal_color_11 = '#f68f72'
    let g:terminal_color_12 = '#6c92c4'
    let g:terminal_color_13 = '#aa94d0'
    let g:terminal_color_14 = '#b9c8dd'
    let g:terminal_color_15 = '#deded2'
  else
    let g:terminal_ansi_colors = ['#1d1d14', '#864044', '#4faf75', '#f17f5f', '#6086b7', '#9e87c4', '#acbcd2', '#d1d1c6', '#89896b', '#9c4247', '#5abd81', '#f68f72', '#6c92c4', '#aa94d0', '#b9c8dd', '#deded2']
  endif
endif

hi! link TermCursor Cursor
hi! link ToolbarButton TabLineSel
hi! link ToolbarLine TabLineFill
hi! link cssBraces Delimiter
hi! link cssClassName Special
hi! link cssClassNameDot yokaiNormalFg
hi! link cssPseudoClassId Special
hi! link cssTagName Statement
hi! link helpHyperTextJump Constant
hi! link htmlArg Constant
hi! link htmlEndTag Statement
hi! link htmlTag Statement
hi! link jsonQuote yokaiNormalFg
hi! link phpVarSelector Identifier
hi! link pythonFunction Title
hi! link rubyDefine Statement
hi! link rubyFunction Title
hi! link rubyInterpolationDelimiter String
hi! link rubySharpBang Comment
hi! link rubyStringDelimiter String
hi! link rustFuncCall yokaiNormalFg
hi! link rustFuncName Title
hi! link rustType Constant
hi! link sassClass Special
hi! link shFunction yokaiNormalFg
hi! link vimContinue Comment
hi! link vimFuncSID vimFunction
hi! link vimFuncVar yokaiNormalFg
hi! link vimFunction Title
hi! link vimGroup Statement
hi! link vimHiGroup Statement
hi! link vimHiTerm Identifier
hi! link vimMapModKey Special
hi! link vimOption Identifier
hi! link vimVar yokaiNormalFg
hi! link xmlAttrib Constant
hi! link xmlAttribPunct Statement
hi! link xmlEndTag Statement
hi! link xmlNamespace Statement
hi! link xmlTag Statement
hi! link xmlTagName Statement
hi! link yamlKeyValueDelimiter Delimiter
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMatch Title
hi! link CtrlPMode2 StatusLine
hi! link deniteMatched yokaiNormalFg
hi! link deniteMatchedChar Title
hi! link elixirBlockDefinition Statement
hi! link elixirDefine Statement
hi! link elixirDocSigilDelimiter String
hi! link elixirDocTest String
hi! link elixirExUnitMacro Statement
hi! link elixirExceptionDefine Statement
hi! link elixirFunctionDeclaration Title
hi! link elixirKeyword Statement
hi! link elixirModuleDeclaration yokaiNormalFg
hi! link elixirModuleDefine Statement
hi! link elixirPrivateDefine Statement
hi! link elixirStringDelimiter String
hi! link jsFlowMaybe yokaiNormalFg
hi! link jsFlowObject yokaiNormalFg
hi! link jsFlowType PreProc
hi! link graphqlName yokaiNormalFg
hi! link graphqlOperator yokaiNormalFg
hi! link gitmessengerHash Comment
hi! link gitmessengerHeader Statement
hi! link gitmessengerHistory Constant
hi! link jsArrowFunction Operator
hi! link jsClassDefinition yokaiNormalFg
hi! link jsClassFuncName Title
hi! link jsExport Statement
hi! link jsFuncName Title
hi! link jsFutureKeys Statement
hi! link jsFuncCall yokaiNormalFg
hi! link jsGlobalObjects Statement
hi! link jsModuleKeywords Statement
hi! link jsModuleOperators Statement
hi! link jsNull Constant
hi! link jsObjectFuncName Title
hi! link jsObjectKey Identifier
hi! link jsSuper Statement
hi! link jsTemplateBraces Special
hi! link jsUndefined Constant
hi! link markdownBold Special
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
hi! link ngxDirective Statement
hi! link plug1 yokaiNormalFg
hi! link plug2 Identifier
hi! link plugDash Comment
hi! link plugMessage Special
hi! link SignifySignAdd GitGutterAdd
hi! link SignifySignChange GitGutterChange
hi! link SignifySignChangeDelete GitGutterChangeDelete
hi! link SignifySignDelete GitGutterDelete
hi! link SignifySignDeleteFirstLine SignifySignDelete
hi! link StartifyBracket Comment
hi! link StartifyFile Identifier
hi! link StartifyFooter Constant
hi! link StartifyHeader Constant
hi! link StartifyNumber Special
hi! link StartifyPath Comment
hi! link StartifySection Statement
hi! link StartifySlash Comment
hi! link StartifySpecial yokaiNormalFg
hi! link svssBraces Delimiter
hi! link swiftIdentifier yokaiNormalFg
hi! link TSAttribute Special
hi! link TSBoolean Constant
hi! link TSCharacter Constant
hi! link TSComment Comment
hi! link TSConstructor yokaiNormalFg
hi! link TSConditional Statement
hi! link TSConstant Constant
hi! link TSConstBuiltin Constant
hi! link TSConstMacro Constant
hi! link TSError Error
hi! link TSException Statement
hi! link TSField yokaiNormalFg
hi! link TSFloat Constant
hi! link TSInclude Statement
hi! link TSKeyword Statement
hi! link TSKeywordFunction Function
hi! link TSLabel Special
hi! link TSNamespace Statement
hi! link TSNumber Constant
hi! link TSOperator yokaiNormalFg
hi! link TSParameter yokaiNormalFg
hi! link TSParameterReference yokaiNormalFg
hi! link TSProperty TSField
hi! link TSPunctDelimiter yokaiNormalFg
hi! link TSPunctBracket yokaiNormalFg
hi! link TSPunctSpecial Special
hi! link TSRepeat Statement
hi! link TSString String
hi! link TSStringRegex String
hi! link TSStringEscape Special
hi! link TSTag htmlTagName
hi! link TSTagDelimiter htmlTagName
hi! link TSText yokaiNormalFg
hi! link TSTitle Title
hi! link TSType Type
hi! link TSTypeBuiltin Type
hi! link TSVariable yokaiNormalFg
hi! link TSVariableBuiltin Statement
hi! link typescriptAjaxMethods yokaiNormalFg
hi! link typescriptBraces yokaiNormalFg
hi! link typescriptEndColons yokaiNormalFg
hi! link typescriptFuncKeyword Statement
hi! link typescriptGlobalObjects Statement
hi! link typescriptHtmlElemProperties yokaiNormalFg
hi! link typescriptIdentifier Statement
hi! link typescriptMessage yokaiNormalFg
hi! link typescriptNull Constant
hi! link typescriptParens yokaiNormalFg

if !has('nvim')
  hi! link SpecialKey Whitespace
endif
