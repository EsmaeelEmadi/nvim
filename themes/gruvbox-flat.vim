hi comment cterm=italic
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_underline=1
let g:gruvbox_undercurl=1
let g:gruvbox_italicize_comments=1
let g:gruvbox_invert_tabline=1
let g:gruvbox_italicize_strings=0                                                                                           
" let g:gruvbox_improved_strings=1 
let g:gruvbox_contrast_dark="medium"
let g:gruvbox_contrast_light="medium"
syntax on
colorscheme gruvbox-flat


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif 

let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox-flat'
