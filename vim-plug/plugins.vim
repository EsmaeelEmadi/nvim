call plug#begin('~/.vim/plugged')

	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" FZF
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
	 Plug 'junegunn/fzf.vim'
 	" which key
 	Plug 'liuchengxu/vim-which-key'

	" Cool Icons
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'ryanoasis/vim-devicons'
	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
 	" Better Comments
	Plug 'tpope/vim-commentary'

	" statusline
	Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

	" indent
	Plug 'lukas-reineke/indent-blankline.nvim'

	" LSP
	Plug 'neovim/nvim-lspconfig'

	" THEMES
 	Plug 'gruvbox-community/gruvbox'

 	" auto change html tags
 	Plug 'AndrewRadev/tagalong.vim'

 	" Terminal
 	Plug 'voldikss/vim-floaterm'
	
	" colorizer
	Plug 'norcalli/nvim-colorizer.lua'

	 " Rainbow
	" Plugin 'frazrepo/vim-rainbow'

 	" Git
	 Plug 'airblade/vim-gitgutter'
	 Plug 'tpope/vim-fugitive'
	 Plug 'tpope/vim-rhubarb'
	 Plug 'junegunn/gv.vim'
	 Plug 'rhysd/git-messenger.vim'
	 " easymotion
	 Plug 'easymotion/vim-easymotion'

	Plug 'sakshamgupta05/vim-todo-highlight'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif