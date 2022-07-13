call plug#begin('~/.vim/plugged')

	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" FZF
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
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
	Plug 'LudoPinelli/comment-box.nvim'

	" file explorer
	Plug 'kyazdani42/nvim-tree.lua'

	" statusline
	Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

	" indent
	Plug 'lukas-reineke/indent-blankline.nvim'

	" LSP
	Plug 'neovim/nvim-lspconfig'
	" Plug 'glepnir/lspsaga.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'

	" For vsnip users.
	Plug 'hrsh7th/cmp-vsnip'
	Plug 'hrsh7th/vim-vsnip'

	" For luasnip users.
	" Plug 'L3MON4D3/LuaSnip'
	" Plug 'saadparwaiz1/cmp_luasnip'

	" For ultisnips users.
	" Plug 'SirVer/ultisnips'
	" Plug 'quangnguyen30192/cmp-nvim-ultisnips'

	" For snippy users.
	" Plug 'dcampos/nvim-snippy'
	" Plug 'dcampos/cmp-snippy'


	" Plug 'jose-elias-alvarez/null-ls.nvim'
	" Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
	" Plug 'nvim-lua/plenary.nvim'

	" THEMES
 	Plug 'gruvbox-community/gruvbox'

 	" auto change html tags
 	Plug 'AndrewRadev/tagalong.vim'

 	" Terminal
 	Plug 'voldikss/vim-floaterm'
	
	" colorizer
	Plug 'norcalli/nvim-colorizer.lua'

	 " Rainbow
	Plug 'frazrepo/vim-rainbow'

 	" Git
	 " Plug 'airblade/vim-gitgutter'
	 " Plug 'tpope/vim-fugitive'
	 " Plug 'tpope/vim-rhubarb'
	 " Plug 'junegunn/gv.vim'
	 " Plug 'rhysd/git-messenger.vim'
	 " easymotion
	 Plug 'easymotion/vim-easymotion'


	" todo
	Plug 'vuciv/vim-bujo'
	Plug 'sakshamgupta05/vim-todo-highlight'

	" Svelte and typescript
	"  Plug 'evanleck/vim-svelte'
	"  Plug 'pangloss/vim-javascript'
	"  Plug 'HerringtonDarkholme/yats.vim'
	"  Plug 'leafOfTree/vim-svelte-plugin'


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
