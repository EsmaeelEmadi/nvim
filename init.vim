" Plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

" COC
source $HOME/.config/nvim/coc/coc.vim
source $HOME/.config/nvim/coc/coc-extensions.vim
" fzf
source $HOME/.config/nvim/config/fzf.vim

source $HOME/.config/nvim/config/easymotion.vim
source $HOME/.config/nvim/config/floaterm.vim
source $HOME/.config/nvim/config/git-messenger.vim
source $HOME/.config/nvim/config/gitgutter.vim
source $HOME/.config/nvim/config/neoline.vim
source $HOME/.config/nvim/config/todo.vim
" rainbow
" source $HOME/.config/nvim/config/rainbow.vim

" settings
source $HOME/.config/nvim/general/settings.vim

" keys
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-key.vim

source $HOME/.config/nvim/themes/syntax.vim
source $HOME/.config/nvim/themes/gruvbox.vim

lua require('status')
lua require('init')