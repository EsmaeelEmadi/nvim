syntax on
set t_Co=256
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set cursorline
colorscheme onehalflight
" let g:airline_theme='onehalflight'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

 let g:lightline = {}
 " let g:lightline.colorscheme = ' onehalflight'
  let g:lightline.colorscheme='onehalfdark'

  let g:airline_theme='onehalfdark'
