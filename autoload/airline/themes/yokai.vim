let s:save_cpo = &cpo
set cpo&vim

function! s:build_palette() abort
  if &background == 'light'
    let col_base     = ['#afaf55', '#d0d09b', 244, 251]
    let col_edge     = ['#d7d7c0', '#a3a375', 252, 243]
    let col_error    = ['#d7d7c0', '#dc5a61', 254, 125]
    let col_gradient = ['#d7d7c0', '#b9b988', 252, 247]
    let col_nc       = ['#afaf55', '#d0d09b', 244, 251]
    let col_warning  = ['#d7d7c0', '#9e462d', 254, 130]
    let col_insert   = ['#d7d7c0', '#2468c0', 254, 25]
    let col_replace  = ['#d7d7c0', '#9e462d', 254, 130]
    let col_visual   = ['#d7d7c0', '#377b52', 254, 64]
    let col_red      = ['#dc5a61', '#d7d7c0', 125, 254]
  else
    let col_base     = ['#474737', '#050504', 238, 233]
    let col_edge     = ['#1b1b17', '#969681', 234, 245]
    let col_error    = ['#0e0e0b', '#864044', 234, 203]
    let col_gradient = ['#89896b', '#323226', 242, 236]
    let col_nc       = ['#474737', '#050504', 238, 233]
    let col_warning  = ['#0e0e0b', '#c67e6b', 234, 216]
    let col_insert   = ['#0e0e0b', '#6086b7', 234, 110]
    let col_replace  = ['#0e0e0b', '#c67e6b', 234, 216]
    let col_visual   = ['#0e0e0b', '#5e876e', 234, 150]
    let col_red      = ['#864044', '#0e0e0b', 203, 234]
  endif

  let p = {}
  let p.inactive = airline#themes#generate_color_map(
        \ col_nc,
        \ col_nc,
        \ col_nc)
  let p.normal = airline#themes#generate_color_map(
        \ col_edge,
        \ col_gradient,
        \ col_base)
  let p.insert = airline#themes#generate_color_map(
        \ col_insert,
        \ col_gradient,
        \ col_base)
  let p.replace = airline#themes#generate_color_map(
        \ col_replace,
        \ col_gradient,
        \ col_base)
  let p.visual = airline#themes#generate_color_map(
        \ col_visual,
        \ col_gradient,
        \ col_base)
  let p.terminal = airline#themes#generate_color_map(
        \ col_insert,
        \ col_gradient,
        \ col_base)

  " Accents
  let p.accents = {
        \   'red': col_red,
        \ }

  " Error
  let p.inactive.airline_error = col_error
  let p.insert.airline_error = col_error
  let p.normal.airline_error = col_error
  let p.replace.airline_error = col_error
  let p.visual.airline_error = col_error

  " Warning
  let p.inactive.airline_warning = col_warning
  let p.insert.airline_warning = col_warning
  let p.normal.airline_warning = col_warning
  let p.replace.airline_warning = col_warning
  let p.visual.airline_warning = col_warning

  " Terminal
  let p.normal.airline_term = col_base
  let p.terminal.airline_term = col_base
  let p.visual.airline_term = col_base

  return p
endfunction


let g:airline#themes#yokai#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
