call plug#begin('~/.config/nvim/plugged')
	" tmux
	Plug 'christoomey/vim-tmux-navigator'
    " Themes
    Plug 'joshdick/onedark.vim'
	Plug 'kaicataldo/material.vim'
    Plug 'tomasiser/vim-code-dark'
    Plug 'crusoexia/vim-monokai'
    Plug 'ayu-theme/ayu-vim'
	Plug 'morhetz/gruvbox'
	Plug 'shinchu/lightline-gruvbox.vim'	
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'Rigellute/shades-of-purple.vim'
	Plug 'wadackel/vim-dogrun'
	Plug 'jcherven/jummidark.vim'
	Plug 'arzg/vim-colors-xcode'
    " Autopairs
    Plug 'jiangmiao/auto-pairs'
    " File explorer
    Plug 'scrooloose/NERDTree'    
    Plug 'Xuyuanp/nerdtree-git-plugin'
    " Icons
    Plug 'ryanoasis/vim-devicons'
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Syntax support
    Plug 'sheerun/vim-polyglot'
    " Prettier
    Plug 'prettier/vim-prettier', { 'do': 'npm install' }
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " Git integration
    Plug 'mhinz/vim-signify'
	Plug 'tpope/vim-fugitive'
	" Live server in vim
	Plug 'turbio/bracey.vim'
	" Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'sirver/ultisnips'
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	Plug 'tpope/vim-surround'
    " Indent guides
    Plug 'Yggdroot/indentLine' 
    " Comment code
    Plug 'tpope/vim-commentary'
	" Doc Plugin
	Plug 'KabbAmine/zeavim.vim'
call plug#end()
