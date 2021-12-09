call plug#begin('~/.vim/plugged')
" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Cool Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
" Closetags
Plug 'alvan/vim-closetag'
 " Better Comments
Plug 'tpope/vim-commentary'
" Convert binary, hex, etc..
Plug 'glts/vim-radical'
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf.vim'
 " Git
 Plug 'airblade/vim-gitgutter'
 Plug 'tpope/vim-fugitive'
 Plug 'tpope/vim-rhubarb'
 Plug 'junegunn/gv.vim'
 Plug 'rhysd/git-messenger.vim'
 " easymotion
 Plug 'easymotion/vim-easymotion'
 " Surround
 Plug 'tpope/vim-surround'
 " Better Syntax Support
 Plug 'sheerun/vim-polyglot'
 " Terminal
 Plug 'voldikss/vim-floaterm'
 " which key
 Plug 'liuchengxu/vim-which-key'
 " Snippets
 Plug 'honza/vim-snippets'
 " auto change html tags
 Plug 'AndrewRadev/tagalong.vim'
 " Smooth scroll
 Plug 'psliwka/vim-smoothie'
 " async tasks
 " Colorizer
 Plug 'norcalli/nvim-colorizer.lua'
 " Debugging
 Plug 'puremourning/vimspector'
 " Start Screen
 Plug 'mhinz/vim-startify'
 " themes
 Plug 'mangeshrex/uwu.vim'
 Plug 'betoissues/contrastneed-theme'
 Plug 'srcery-colors/srcery-vim'
 Plug 'gruvbox-community/gruvbox'
 Plug 'eddyekofo94/gruvbox-flat.nvim'
 Plug 'ayu-theme/ayu-vim' " or other package manager
 Plug 'sonph/onehalf', { 'rtp': 'vim' }
 Plug 'ghifarit53/tokyonight-vim'
 Plug 'arcticicestudio/nord-vim'
 Plug 'drewtempelmeyer/palenight.vim'
 Plug 'sainnhe/sonokai'
 Plug 'hzchirs/vim-material'
 Plug 'projekt0n/github-nvim-theme'

 " top tabs 

 " statusline
" Plug 'itchyny/lightline.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" Plug 'Avimitin/nerd-galaxyline'
" Plug 'alvarosevilla95/luatab.nvim'
" Plug 'hoob3rt/lualine.nvim'
" Plug 'kdheepak/tabline.nvim'
" Plug 'https://github.com/adelarsq/neoline.vim'
" Plug 'noib3/cokeline.nvim'
Plug 'kevinhwang91/rnvimr'
Plug 'sakshamgupta05/vim-todo-highlight'

" indent
Plug 'lukas-reineke/indent-blankline.nvim'

 " svelte
 Plug 'evanleck/vim-svelte'
 Plug 'pangloss/vim-javascript'
 Plug 'HerringtonDarkholme/yats.vim'
 Plug 'codechips/coc-svelte', {'do': 'npm install'}

 " python
 " Plug 'zchee/deoplete-jedi'

Plug 'earthly/earthly.vim', { 'branch': 'main' }

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif


