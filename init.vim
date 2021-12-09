" pluginvs
source $HOME/.config/nvim/vim-plug/plugins.vim

" COC
source $HOME/.config/nvim/plug-config/coc/coc.vim
source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim

" status line
" luafile $HOME/.config/nvim/lua/status-line.lua
" source $HOME/.config/nvim/plug-config/rnvimr.vim
" colsetags
source $HOME/.config/nvim/plug-config/closetags.vim
" easymotion
source $HOME/.config/nvim/plug-config/easymotion.vim
" far
source $HOME/.config/nvim/plug-config/far.vim
" floaterm
source $HOME/.config/nvim/plug-config/floaterm.vim
" fzf
source $HOME/.config/nvim/plug-config/fzf.vim
" vim-commentary
source $HOME/.config/nvim/plug-config/vim-commentary.vim
" tag-along
source $HOME/.config/nvim/plug-config/tagalong.vim
" git
source $HOME/.config/nvim/plug-config/git-messanger.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim
" start screen
source $HOME/.config/nvim/plug-config/start-screen.vim
" rainbow
source $HOME/.config/nvim/plug-config/rainbow.vim
" ranger
source $HOME/.config/nvim/plug-config/ranger.vim
" color highlight
source $HOME/.config/nvim/plug-config/vim-todo-highlight.vim
" settings
source $HOME/.config/nvim/general/settings.vim

" keys
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim
" themes
source $HOME/.config/nvim/themes/syntax.vim
" source $HOME/.config/nvim/themes/github.vim
" source $HOME/.config/nvim/themes/srcery.vim
" source $HOME/.config/nvim/themes/ayu.vim
" source $HOME/.config/nvim/themes/onehalf.vim
source $HOME/.config/nvim/themes/gruvbox.vim
" source $HOME/.config/nvim/themes/gruvbox-flat.vim


" source $HOME/.config/nvim/plug-config/neoline.vim

lua require('status')
" lua require('tab')


" :hi TabLineFill gui=underline,reverse guifg=#282828 guibg=#E5C07B
" :hi TabLineSel gui=bold,reverse guifg=#261c00 guibg=#D54E53
" :hi TabLine gui=reverse guifg=#282828 guibg=#E5C07B

" :set g:neoline_disable_statusline=1




if exists('g:neoline_loaded')
    finish
endif
let g:neoline_loaded = 1

function! ActiveLine(idbuffer) abort
    let ss = "require'status-line'.activeLine(" . a:idbuffer . ")"
    return luaeval(ss)
endfunction

" Notes:
" Based on https://github.com/itchyny/lightline.vim/blob/893bd90787abfec52a2543074e444fc6a9e0cf78/autoload/lightline.vim
function! InactiveLine(idbuffer) abort
    if &buftype ==# 'popup' | return | endif

    let w = winnr()
    for n in range(1, winnr('$'))
        if n!=w
            " Get buffer id for window number n
            let s:bufferId = winbufnr(n)
            " Get status line for the inactive window
            let ssI = "require'status-line'.inActiveLine(" . s:bufferId . ")"
            " Update the new status line
            call setwinvar(n, '&statusline', luaeval(ssI))
        endif
    endfor
endfunction

if !exists('g:neoline_disable_statusline')
    " Change statusline automatically
    augroup NeoLine
      autocmd!
      autocmd WinEnter,BufEnter * setlocal statusline=%!ActiveLine(bufnr('%'))
      autocmd WinEnter,BufEnter,WinLeave,BufLeave * call InactiveLine(bufnr('%'))
    augroup END
endif

function! TabLine()
    return luaeval("require'status-line'.TabLine()")
endfunction

if !exists('g:neoline_disable_tabline')
    set tabline=%!TabLine()
endif

finish

