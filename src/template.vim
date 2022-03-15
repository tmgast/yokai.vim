" _________________________________________
" YOKAI
"
" File:       yokai.vim
" Maintainer: cocopon <cocopon@me.com>
" Modified:   {{ modified }}
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
  {{ light_rules }}

  if has('nvim')
    {{ light_neovim_term_defs }}
  else
    {{ light_vim_term_defs }}
  endif
else
  {{ dark_rules }}

  if has('nvim')
    {{ dark_neovim_term_defs }}
  else
    {{ dark_vim_term_defs }}
  endif
endif

{{ links }}

if !has('nvim')
  hi! link SpecialKey Whitespace
endif
