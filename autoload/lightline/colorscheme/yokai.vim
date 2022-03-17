let s:save_cpo = &cpo
set cpo&vim


function! s:build_palette() abort
  let p = {
        \ 'normal':   {},
        \ 'inactive': {},
        \ 'insert':   {},
        \ 'replace':  {},
        \ 'visual':   {},
        \ 'tabline':  {}}

  if &background == 'light'
    let col_base     = ['#afaf55', '#d0d09b', 244, 251]
    let col_edge     = ['#d7d7c0', '#a3a375', 252, 243]
    let col_gradient = ['#d7d7c0', '#b9b988', 252, 247]
    let col_nc       = ['#afaf55', '#d0d09b', 244, 251]
    let col_tabfill  = ['#afaf55', '#d0d09b', 244, 251]
    let col_normal   = ['#d7d7c0', '#a3a375', 252, 243]
    let col_error    = ['#d7d7c0', '#dc5a61', 254, 125]
    let col_warning  = ['#d7d7c0', '#9e462d', 254, 130]
    let col_insert   = ['#d7d7c0', '#6129bc', 254, 97]
    let col_replace  = ['#d7d7c0', '#9e462d', 254, 130]
    let col_visual   = ['#d7d7c0', '#2468c0', 254, 25]
    let col_tabsel   = ['#d7d7c0', '#a3a375', 252, 243]
  else
    let col_base     = ['#555542', '#13130f', 238, 233]
    let col_edge     = ['#1b1b17', '#969681', 234, 245]
    let col_gradient = ['#565647', '#3c3c2e', 242, 236]
    let col_nc       = ['#555542', '#13130f', 238, 233]
    let col_tabfill  = ['#555542', '#13130f', 238, 233]
    let col_normal   = ['#1b1b17', '#969681', 234, 245]
    let col_error    = ['#1c1c16', '#864044', 234, 203]
    let col_warning  = ['#1c1c16', '#567eb3', 234, 216]
    let col_insert   = ['#1c1c16', '#8365b3', 234, 140]
    let col_replace  = ['#1c1c16', '#567eb3', 234, 216]
    let col_visual   = ['#1c1c16', '#af644f', 234, 110]
    let col_tabsel   = ['#1b1b17', '#969681', 234, 245]
  endif

  let p.normal.middle = [
        \ col_base]
  let p.normal.left = [
        \ col_normal,
        \ col_gradient]
  let p.normal.right = [
        \ col_edge,
        \ col_gradient]
  let p.normal.error = [
        \ col_error]
  let p.normal.warning = [
        \ col_warning]

  let p.insert.left = [
        \ col_insert,
        \ col_gradient]
  let p.replace.left = [
        \ col_replace,
        \ col_gradient]
  let p.visual.left = [
        \ col_visual,
        \ col_gradient]

  let p.inactive.middle = [
        \ col_nc]
  let p.inactive.left = [
        \ col_nc,
        \ col_nc]
  let p.inactive.right = [
        \ col_nc,
        \ col_nc]

  let p.tabline.middle = [
        \ col_tabfill]
  let p.tabline.left = [
        \ col_tabfill]
  let p.tabline.tabsel = [
        \ col_tabsel]

  let p.tabline.right = copy(p.normal.right)

  return p
endfunction


let g:lightline#colorscheme#yokai#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
