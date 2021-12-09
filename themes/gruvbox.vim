hi comment cterm=italic
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_underline=1
let g:gruvbox_undercurl=1
let g:gruvbox_italicize_comments=1
let g:gruvbox_invert_tabline=1
let g:gruvbox_italicize_strings=0                                                                                           
" let g:gruvbox_improved_strings=1 
let g:gruvbox_contrast_dark="dark"
let g:gruvbox_contrast_light="light"
let g:gruvbox_sign_column="bg0"

syntax on
colorscheme gruvbox


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif 

" let g:airline_theme='gruvbox'
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
