" _________________________________________
" YOKAI
"
" File:       yokai.vim
" Maintainer: cocopon <cocopon@me.com>
" Modified:   2022-03-17 14:23+0900
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
  hi Normal ctermbg=254 ctermfg=237 guibg=#d7d7c0 guifg=#626250
  hi ColorColumn cterm=NONE ctermbg=253 ctermfg=NONE guibg=#d6d6b0 guifg=NONE
  hi CursorColumn cterm=NONE ctermbg=253 ctermfg=NONE guibg=#d6d6b0 guifg=NONE
  hi CursorLine cterm=NONE ctermbg=253 ctermfg=NONE guibg=#d6d6b0 guifg=NONE
  hi Comment ctermfg=244 guifg=#a3a383
  hi Conceal ctermbg=254 ctermfg=244 guibg=#d7d7c0 guifg=#a3a383
  hi Constant ctermfg=97 guifg=#6129bc
  hi Cursor ctermbg=237 ctermfg=254 guibg=#626250 guifg=#d7d7c0
  hi CursorLineNr cterm=NONE ctermbg=251 ctermfg=237 guibg=#d0d09b guifg=#838335
  hi Delimiter ctermfg=237 guifg=#626250
  hi DiffAdd ctermbg=79 ctermfg=23 guibg=#bfc9af guifg=#506c50
  hi DiffChange ctermbg=116 ctermfg=24 guibg=#bec3b5 guifg=#505c61
  hi DiffDelete cterm=NONE ctermbg=181 ctermfg=89 gui=NONE guibg=#d7c4b1 guifg=#925e56
  hi DiffText cterm=NONE ctermbg=73 ctermfg=24 gui=NONE guibg=#9ea9a8 guifg=#626250
  hi Directory ctermfg=31 guifg=#35547c
  hi Error ctermbg=254 ctermfg=125 guibg=#d7d7c0 guifg=#dc5a61
  hi ErrorMsg ctermbg=254 ctermfg=125 guibg=#d7d7c0 guifg=#dc5a61
  hi WarningMsg ctermbg=254 ctermfg=125 guibg=#d7d7c0 guifg=#dc5a61
  hi EndOfBuffer ctermfg=251 guifg=#cbcb9d
  hi NonText ctermfg=251 guifg=#cbcb9d
  hi Whitespace ctermfg=251 guifg=#cbcb9d
  hi Folded ctermbg=253 ctermfg=243 guibg=#d6d6b0 guifg=#85854d
  hi FoldColumn ctermbg=253 ctermfg=248 guibg=#d6d6b0 guifg=#b3b36c
  hi Function ctermfg=25 guifg=#2468c0
  hi Identifier cterm=NONE ctermfg=31 guifg=#35547c
  hi Ignore ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
  hi Include ctermfg=25 guifg=#2468c0
  hi IncSearch cterm=reverse ctermfg=NONE gui=reverse guifg=NONE term=reverse
  hi LineNr ctermbg=253 ctermfg=248 guibg=#d6d6b0 guifg=#b3b36c
  hi MatchParen ctermbg=250 ctermfg=0 guibg=#b9b991 guifg=#616150
  hi ModeMsg ctermfg=244 guifg=#a3a383
  hi MoreMsg ctermfg=64 guifg=#377b52
  hi Operator ctermfg=31 guifg=#35547c
  hi Pmenu ctermbg=251 ctermfg=237 guibg=#d0d09b guifg=#626250
  hi PmenuSbar ctermbg=251 ctermfg=NONE guibg=#d0d09b guifg=NONE
  hi PmenuSel ctermbg=248 ctermfg=235 guibg=#c4c473 guifg=#626250
  hi PmenuThumb ctermbg=237 ctermfg=NONE guibg=#626250 guifg=NONE
  hi PreProc ctermfg=64 guifg=#377b52
  hi Question ctermfg=64 guifg=#377b52
  hi QuickFixLine ctermbg=251 ctermfg=237 guibg=#c7c79c guifg=#626250
  hi Search ctermbg=180 ctermfg=94 guibg=#eabaad guifg=#853f2c
  hi SignColumn ctermbg=253 ctermfg=248 guibg=#d6d6b0 guifg=#b3b36c
  hi Special ctermfg=64 guifg=#377b52
  hi SpecialKey ctermfg=248 guifg=#cbcb6f
  hi SpellBad ctermbg=181 ctermfg=237 gui=undercurl guifg=NONE guisp=#dc5a61
  hi SpellCap ctermbg=117 ctermfg=237 gui=undercurl guifg=NONE guisp=#2468c0
  hi SpellLocal ctermbg=116 ctermfg=237 gui=undercurl guifg=NONE guisp=#35547c
  hi SpellRare ctermbg=110 ctermfg=237 gui=undercurl guifg=NONE guisp=#6129bc
  hi Statement ctermfg=25 gui=NONE guifg=#2468c0
  hi StatusLine cterm=reverse ctermbg=252 ctermfg=243 gui=reverse guibg=#d7d7c0 guifg=#a3a375 term=reverse
  hi StatusLineTerm cterm=reverse ctermbg=252 ctermfg=243 gui=reverse guibg=#d7d7c0 guifg=#a3a375 term=reverse
  hi StatusLineNC cterm=reverse ctermbg=244 ctermfg=251 gui=reverse guibg=#afaf55 guifg=#d0d09b
  hi StatusLineTermNC cterm=reverse ctermbg=244 ctermfg=251 gui=reverse guibg=#afaf55 guifg=#d0d09b
  hi StorageClass ctermfg=25 guifg=#2468c0
  hi String ctermfg=64 guifg=#377b52
  hi Structure ctermfg=25 guifg=#2468c0
  hi TabLine cterm=NONE ctermbg=251 ctermfg=244 gui=NONE guibg=#d0d09b guifg=#afaf55
  hi TabLineFill cterm=reverse ctermbg=244 ctermfg=251 gui=reverse guibg=#afaf55 guifg=#d0d09b
  hi TabLineSel cterm=NONE ctermbg=254 ctermfg=237 gui=NONE guibg=#d7d7c0 guifg=#7f7f6c
  hi TermCursorNC ctermbg=244 ctermfg=254 guibg=#a3a383 guifg=#d7d7c0
  hi Title ctermfg=130 gui=NONE guifg=#9e462d
  hi Todo ctermbg=254 ctermfg=64 guibg=#bfc9af guifg=#377b52
  hi Type ctermfg=25 gui=NONE guifg=#2468c0
  hi Underlined cterm=underline ctermfg=25 gui=underline guifg=#2468c0 term=underline
  hi VertSplit cterm=NONE ctermbg=251 ctermfg=251 gui=NONE guibg=#d0d09b guifg=#d0d09b
  hi Visual ctermbg=251 ctermfg=NONE guibg=#c7c79c guifg=NONE
  hi VisualNOS ctermbg=251 ctermfg=NONE guibg=#c7c79c guifg=NONE
  hi WildMenu ctermbg=235 ctermfg=252 guibg=#4c4c32 guifg=#d7d7c0
  hi yokaiNormalFg ctermfg=237 guifg=#626250
  hi diffAdded ctermfg=64 guifg=#377b52
  hi diffRemoved ctermfg=125 guifg=#dc5a61
  hi ALEErrorSign ctermbg=253 ctermfg=125 guibg=#d6d6b0 guifg=#dc5a61
  hi ALEWarningSign ctermbg=253 ctermfg=130 guibg=#d6d6b0 guifg=#9e462d
  hi ALEVirtualTextError ctermfg=125 guifg=#dc5a61
  hi ALEVirtualTextWarning ctermfg=130 guifg=#9e462d
  hi CtrlPMode1 ctermbg=247 ctermfg=252 guibg=#b9b988 guifg=#d7d7c0
  hi EasyMotionShade ctermfg=250 guifg=#cdcdbb
  hi EasyMotionTarget ctermfg=64 guifg=#377b52
  hi EasyMotionTarget2First ctermfg=130 guifg=#9e462d
  hi EasyMotionTarget2Second ctermfg=130 guifg=#9e462d
  hi GitGutterAdd ctermbg=253 ctermfg=64 guibg=#d6d6b0 guifg=#377b52
  hi GitGutterChange ctermbg=253 ctermfg=31 guibg=#d6d6b0 guifg=#35547c
  hi GitGutterChangeDelete ctermbg=253 ctermfg=31 guibg=#d6d6b0 guifg=#35547c
  hi GitGutterDelete ctermbg=253 ctermfg=125 guibg=#d6d6b0 guifg=#dc5a61
  hi gitmessengerEndOfBuffer ctermbg=253 ctermfg=248 guibg=#d6d6b0 guifg=#b3b36c
  hi gitmessengerPopupNormal ctermbg=253 ctermfg=237 guibg=#d6d6b0 guifg=#626250
  hi Sneak ctermbg=97 ctermfg=254 guibg=#6129bc guifg=#d7d7c0
  hi SneakScope ctermbg=251 ctermfg=244 guibg=#c7c79c guifg=#a3a383
  hi SyntasticErrorSign ctermbg=253 ctermfg=125 guibg=#d6d6b0 guifg=#dc5a61
  hi SyntasticStyleErrorSign ctermbg=253 ctermfg=125 guibg=#d6d6b0 guifg=#dc5a61
  hi SyntasticStyleWarningSign ctermbg=253 ctermfg=130 guibg=#d6d6b0 guifg=#9e462d
  hi SyntasticWarningSign ctermbg=253 ctermfg=130 guibg=#d6d6b0 guifg=#9e462d
  hi TSFunction ctermfg=237 guifg=#2b2107
  hi TSFunctionBuiltin ctermfg=237 guifg=#2b2107
  hi TSFunctionMacro ctermfg=237 guifg=#2b2107
  hi TSMethod ctermfg=237 guifg=#2b2107
  hi TSURI cterm=underline ctermfg=31 gui=underline guifg=#35547c term=underline
  hi ZenSpace ctermbg=125 guibg=#dc5a61
  hi DiagnosticUnderlineInfo cterm=underline ctermfg=97 gui=underline guisp=#6129bc term=underline
  hi DiagnosticInfo ctermfg=97 guifg=#6129bc
  hi DiagnosticSignInfo ctermbg=253 ctermfg=97 guibg=#d6d6b0 guifg=#6129bc
  hi DiagnosticUnderlineHint cterm=underline ctermfg=244 gui=underline guisp=#a3a383 term=underline
  hi DiagnosticHint ctermfg=244 guifg=#a3a383
  hi DiagnosticSignHint ctermbg=253 ctermfg=244 guibg=#d6d6b0 guifg=#a3a383
  hi DiagnosticUnderlineWarn cterm=underline ctermfg=130 gui=underline guisp=#9e462d term=underline
  hi DiagnosticWarn ctermfg=130 guifg=#9e462d
  hi DiagnosticSignWarn ctermbg=253 ctermfg=130 guibg=#d6d6b0 guifg=#9e462d
  hi DiagnosticUnderlineError cterm=underline ctermfg=125 gui=underline guisp=#dc5a61 term=underline
  hi DiagnosticError ctermfg=125 guifg=#dc5a61
  hi DiagnosticSignError ctermbg=253 ctermfg=125 guibg=#d6d6b0 guifg=#dc5a61
  hi DiagnosticFloatingHint ctermbg=251 ctermfg=237 guibg=#d0d09b guifg=#626250
  hi yokaiALAccentRed ctermfg=125 guifg=#dc5a61

  if has('nvim')
    let g:terminal_color_0 = '#d6d6b0'
    let g:terminal_color_1 = '#dc5a61'
    let g:terminal_color_2 = '#377b52'
    let g:terminal_color_3 = '#9e462d'
    let g:terminal_color_4 = '#2468c0'
    let g:terminal_color_5 = '#6129bc'
    let g:terminal_color_6 = '#35547c'
    let g:terminal_color_7 = '#626250'
    let g:terminal_color_8 = '#a3a383'
    let g:terminal_color_9 = '#dd3f47'
    let g:terminal_color_10 = '#2b6d45'
    let g:terminal_color_11 = '#8e3a22'
    let g:terminal_color_12 = '#1a5baf'
    let g:terminal_color_13 = '#541fac'
    let g:terminal_color_14 = '#29476d'
    let g:terminal_color_15 = '#575740'
  else
    let g:terminal_ansi_colors = ['#d6d6b0', '#dc5a61', '#377b52', '#9e462d', '#2468c0', '#6129bc', '#35547c', '#626250', '#a3a383', '#dd3f47', '#2b6d45', '#8e3a22', '#1a5baf', '#541fac', '#29476d', '#575740']
  endif
else
  hi Normal ctermbg=234 ctermfg=252 guibg=#1c1c16 guifg=#dcdcd4
  hi ColorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=#2c2c1f guifg=NONE
  hi CursorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=#2c2c1f guifg=NONE
  hi CursorLine cterm=NONE ctermbg=235 ctermfg=NONE guibg=#2c2c1f guifg=NONE
  hi Comment ctermfg=242 guifg=#565647
  hi Conceal ctermbg=234 ctermfg=242 guibg=#1c1c16 guifg=#565647
  hi Constant ctermfg=140 guifg=#8365b3
  hi Cursor ctermbg=252 ctermfg=234 guibg=#dcdcd4 guifg=#1c1c16
  hi CursorLineNr cterm=NONE ctermbg=237 ctermfg=253 guibg=#50502d guifg=#e2e2cc
  hi Delimiter ctermfg=252 guifg=#dcdcd4
  hi DiffAdd ctermbg=29 ctermfg=158 guibg=#39433a guifg=#c0c9be
  hi DiffChange ctermbg=23 ctermfg=159 guibg=#514139 guifg=#d7c8be
  hi DiffDelete cterm=NONE ctermbg=95 ctermfg=224 gui=NONE guibg=#3b2623 guifg=#c2ada8
  hi DiffText cterm=NONE ctermbg=30 ctermfg=195 gui=NONE guibg=#86675c guifg=#dcdcd4
  hi Directory ctermfg=109 guifg=#ce9a8c
  hi Error ctermbg=234 ctermfg=203 guibg=#1c1c16 guifg=#864044
  hi ErrorMsg ctermbg=234 ctermfg=203 guibg=#1c1c16 guifg=#864044
  hi WarningMsg ctermbg=234 ctermfg=203 guibg=#1c1c16 guifg=#864044
  hi EndOfBuffer ctermfg=236 guifg=#393926
  hi NonText ctermfg=236 guifg=#393926
  hi Whitespace ctermfg=236 guifg=#393926
  hi Folded ctermbg=235 ctermfg=245 guibg=#2c2c1f guifg=#8e8e6f
  hi FoldColumn ctermbg=235 ctermfg=239 guibg=#2c2c1f guifg=#676749
  hi Function ctermfg=110 guifg=#af644f
  hi Identifier cterm=NONE ctermfg=109 guifg=#ce9a8c
  hi Ignore ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
  hi Include ctermfg=110 guifg=#af644f
  hi IncSearch cterm=reverse ctermfg=NONE gui=reverse guifg=NONE term=reverse
  hi LineNr ctermbg=235 ctermfg=239 guibg=#2c2c1f guifg=#676749
  hi MatchParen ctermbg=237 ctermfg=255 guibg=#555542 guifg=#ffffff
  hi ModeMsg ctermfg=242 guifg=#565647
  hi MoreMsg ctermfg=150 guifg=#7f9e8e
  hi Operator ctermfg=109 guifg=#ce9a8c
  hi Pmenu ctermbg=236 ctermfg=251 guibg=#3a3a2b guifg=#dcdcd4
  hi PmenuSbar ctermbg=236 ctermfg=NONE guibg=#3a3a2b guifg=NONE
  hi PmenuSel ctermbg=240 ctermfg=255 guibg=#66664b guifg=#f4f4ef
  hi PmenuThumb ctermbg=251 ctermfg=NONE guibg=#dcdcd4 guifg=NONE
  hi PreProc ctermfg=150 guifg=#7f9e8e
  hi Question ctermfg=150 guifg=#7f9e8e
  hi QuickFixLine ctermbg=236 ctermfg=252 guibg=#3b3b29 guifg=#dcdcd4
  hi Search ctermbg=216 ctermfg=234 guibg=#80abe4 guifg=#132339
  hi SignColumn ctermbg=235 ctermfg=239 guibg=#2c2c1f guifg=#676749
  hi Special ctermfg=150 guifg=#7f9e8e
  hi SpecialKey ctermfg=240 guifg=#8b8b59
  hi SpellBad ctermbg=95 ctermfg=252 gui=undercurl guifg=NONE guisp=#864044
  hi SpellCap ctermbg=24 ctermfg=252 gui=undercurl guifg=NONE guisp=#af644f
  hi SpellLocal ctermbg=23 ctermfg=252 gui=undercurl guifg=NONE guisp=#ce9a8c
  hi SpellRare ctermbg=97 ctermfg=252 gui=undercurl guifg=NONE guisp=#8365b3
  hi Statement ctermfg=110 gui=NONE guifg=#af644f
  hi StatusLine cterm=reverse ctermbg=234 ctermfg=245 gui=reverse guibg=#1b1b17 guifg=#969681 term=reverse
  hi StatusLineTerm cterm=reverse ctermbg=234 ctermfg=245 gui=reverse guibg=#1b1b17 guifg=#969681 term=reverse
  hi StatusLineNC cterm=reverse ctermbg=238 ctermfg=233 gui=reverse guibg=#555542 guifg=#13130f
  hi StatusLineTermNC cterm=reverse ctermbg=238 ctermfg=233 gui=reverse guibg=#555542 guifg=#13130f
  hi StorageClass ctermfg=110 guifg=#af644f
  hi String ctermfg=150 guifg=#7f9e8e
  hi Structure ctermfg=110 guifg=#af644f
  hi TabLine cterm=NONE ctermbg=233 ctermfg=238 gui=NONE guibg=#13130f guifg=#555542
  hi TabLineFill cterm=reverse ctermbg=238 ctermfg=233 gui=reverse guibg=#555542 guifg=#13130f
  hi TabLineSel cterm=NONE ctermbg=234 ctermfg=252 gui=NONE guibg=#1c1c16 guifg=#acaca4
  hi TermCursorNC ctermbg=242 ctermfg=234 guibg=#565647 guifg=#1c1c16
  hi Title ctermfg=216 gui=NONE guifg=#567eb3
  hi Todo ctermbg=234 ctermfg=150 guibg=#39433a guifg=#7f9e8e
  hi Type ctermfg=110 gui=NONE guifg=#af644f
  hi Underlined cterm=underline ctermfg=110 gui=underline guifg=#af644f term=underline
  hi VertSplit cterm=NONE ctermbg=233 ctermfg=233 gui=NONE guibg=#13130f guifg=#13130f
  hi Visual ctermbg=236 ctermfg=NONE guibg=#3b3b29 guifg=NONE
  hi VisualNOS ctermbg=236 ctermfg=NONE guibg=#3b3b29 guifg=NONE
  hi WildMenu ctermbg=255 ctermfg=234 guibg=#dbdbd4 guifg=#1b1b17
  hi yokaiNormalFg ctermfg=252 guifg=#dcdcd4
  hi diffAdded ctermfg=150 guifg=#7f9e8e
  hi diffRemoved ctermfg=203 guifg=#864044
  hi ALEErrorSign ctermbg=235 ctermfg=203 guibg=#2c2c1f guifg=#864044
  hi ALEWarningSign ctermbg=235 ctermfg=216 guibg=#2c2c1f guifg=#567eb3
  hi ALEVirtualTextError ctermfg=203 guifg=#864044
  hi ALEVirtualTextWarning ctermfg=216 guifg=#567eb3
  hi CtrlPMode1 ctermbg=236 ctermfg=242 guibg=#3c3c2e guifg=#565647
  hi EasyMotionShade ctermfg=239 guifg=#5b5b3d
  hi EasyMotionTarget ctermfg=150 guifg=#7f9e8e
  hi EasyMotionTarget2First ctermfg=216 guifg=#567eb3
  hi EasyMotionTarget2Second ctermfg=216 guifg=#567eb3
  hi GitGutterAdd ctermbg=235 ctermfg=150 guibg=#2c2c1f guifg=#7f9e8e
  hi GitGutterChange ctermbg=235 ctermfg=109 guibg=#2c2c1f guifg=#ce9a8c
  hi GitGutterChangeDelete ctermbg=235 ctermfg=109 guibg=#2c2c1f guifg=#ce9a8c
  hi GitGutterDelete ctermbg=235 ctermfg=203 guibg=#2c2c1f guifg=#864044
  hi gitmessengerEndOfBuffer ctermbg=235 ctermfg=239 guibg=#2c2c1f guifg=#676749
  hi gitmessengerPopupNormal ctermbg=235 ctermfg=252 guibg=#2c2c1f guifg=#dcdcd4
  hi Sneak ctermbg=140 ctermfg=234 guibg=#8365b3 guifg=#1c1c16
  hi SneakScope ctermbg=236 ctermfg=242 guibg=#3b3b29 guifg=#565647
  hi SyntasticErrorSign ctermbg=235 ctermfg=203 guibg=#2c2c1f guifg=#864044
  hi SyntasticStyleErrorSign ctermbg=235 ctermfg=203 guibg=#2c2c1f guifg=#864044
  hi SyntasticStyleWarningSign ctermbg=235 ctermfg=216 guibg=#2c2c1f guifg=#567eb3
  hi SyntasticWarningSign ctermbg=235 ctermfg=216 guibg=#2c2c1f guifg=#567eb3
  hi TSFunction ctermfg=252 guifg=#e9cb80
  hi TSFunctionBuiltin ctermfg=252 guifg=#e9cb80
  hi TSFunctionMacro ctermfg=252 guifg=#e9cb80
  hi TSMethod ctermfg=252 guifg=#e9cb80
  hi TSURI cterm=underline ctermfg=109 gui=underline guifg=#ce9a8c term=underline
  hi ZenSpace ctermbg=203 guibg=#864044
  hi DiagnosticUnderlineInfo cterm=underline ctermfg=140 gui=underline guisp=#8365b3 term=underline
  hi DiagnosticInfo ctermfg=140 guifg=#8365b3
  hi DiagnosticSignInfo ctermbg=235 ctermfg=140 guibg=#2c2c1f guifg=#8365b3
  hi DiagnosticUnderlineHint cterm=underline ctermfg=242 gui=underline guisp=#565647 term=underline
  hi DiagnosticHint ctermfg=242 guifg=#565647
  hi DiagnosticSignHint ctermbg=235 ctermfg=242 guibg=#2c2c1f guifg=#565647
  hi DiagnosticUnderlineWarn cterm=underline ctermfg=216 gui=underline guisp=#567eb3 term=underline
  hi DiagnosticWarn ctermfg=216 guifg=#567eb3
  hi DiagnosticSignWarn ctermbg=235 ctermfg=216 guibg=#2c2c1f guifg=#567eb3
  hi DiagnosticUnderlineError cterm=underline ctermfg=203 gui=underline guisp=#864044 term=underline
  hi DiagnosticError ctermfg=203 guifg=#864044
  hi DiagnosticSignError ctermbg=235 ctermfg=203 guibg=#2c2c1f guifg=#864044
  hi DiagnosticFloatingHint ctermbg=236 ctermfg=251 guibg=#3a3a2b guifg=#dcdcd4
  hi yokaiALAccentRed ctermfg=203 guifg=#864044

  if has('nvim')
    let g:terminal_color_0 = '#2c2c1f'
    let g:terminal_color_1 = '#864044'
    let g:terminal_color_2 = '#7f9e8e'
    let g:terminal_color_3 = '#567eb3'
    let g:terminal_color_4 = '#af644f'
    let g:terminal_color_5 = '#8365b3'
    let g:terminal_color_6 = '#ce9a8c'
    let g:terminal_color_7 = '#dcdcd4'
    let g:terminal_color_8 = '#565647'
    let g:terminal_color_9 = '#9c4247'
    let g:terminal_color_10 = '#88ad9a'
    let g:terminal_color_11 = '#628ac0'
    let g:terminal_color_12 = '#bd705a'
    let g:terminal_color_13 = '#8f70c0'
    let g:terminal_color_14 = '#d9a79a'
    let g:terminal_color_15 = '#e8e8e0'
  else
    let g:terminal_ansi_colors = ['#2c2c1f', '#864044', '#7f9e8e', '#567eb3', '#af644f', '#8365b3', '#ce9a8c', '#dcdcd4', '#565647', '#9c4247', '#88ad9a', '#628ac0', '#bd705a', '#8f70c0', '#d9a79a', '#e8e8e0']
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
