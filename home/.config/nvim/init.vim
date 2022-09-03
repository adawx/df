" ============================================================================
" Plugins 
" ============================================================================

call plug#begin()
	"Sort through to see whats needed
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'townk/vim-autoclose'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-surround'

"	Plug 'preservim/nerdtree'
"	Plug 'Xuyuanp/nerdtree-git-plugin'

	Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
	Plug 'kyazdani42/nvim-tree.lua'

	Plug 'ryanoasis/vim-devicons'
	Plug 'rbgrouleff/bclose.vim'
	Plug 'vim-scripts/BufOnly.vim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

	"TreeSitter
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'nvim-treesitter/nvim-treesitter-context'

	"Lf (vim-floaterm has to go 2nd) 
	Plug 'ptzz/lf.vim'
	Plug 'voldikss/vim-floaterm'

	"LSP Stuff
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'onsails/lspkind-nvim'

	" vsnip
	Plug 'hrsh7th/vim-vsnip'
	Plug 'hrsh7th/vim-vsnip-integ'

	" Plug 'github/copilot.vim'
	Plug 'nvim-lua/lsp_extensions.nvim'
	Plug 'williamboman/nvim-lsp-installer'

	"Telescrope reqs
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-telescope/telescope-fzy-native.nvim'
	
	" prettier
	Plug 'sbdchd/neoformat'
	
	"rust
	Plug 'rust-lang/rust.vim'
	Plug 'simrat39/rust-tools.nvim'
	
	"lualine
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons'

	"Theme
	Plug 'EdenEast/nightfox.nvim'

	"Formatting
	Plug 'mhartington/formatter.nvim'
call plug#end()

" ============================================================================
" Lua Config
" ============================================================================

lua << END
require('alex')
END

" ============================================================================
" Plugin Config 😡
" ============================================================================

let g:lf_map_keys = 0
map <leader>o :Lf<CR>
let g:lf_replace_netrw = 1 " Open lf when vim opens a directory

" ============================================================================
" Key Remapping & Generic Vim Config
" ============================================================================

" Theme
set termguicolors
colorscheme nightfox 
hi Normal guibg=none
hi NormalFloat guibg=none
hi NormalNC guibg=none
hi NvimTreeWindowPicker guibg=none
hi NvimTreeNormal guibg=none

"Split Moving
nnoremap <silent> <C-h> <c-w>h
nnoremap <silent> <C-l> <c-w>l
nnoremap <silent> <C-k> <c-w>k
nnoremap <silent> <C-j> <c-w>j

" Key Rebinds & Buffer Config
nnoremap <space> :
nmap <F7> :NvimTreeToggle<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <F8> :Bclose!<CR>
nnoremap <F10> :Bclose<CR>
nnoremap <F11> :wBclose<CR>
nnoremap <F19> :qa<CR>
:set hidden
vnoremap <C-y> :w !pbcopy<CR>
noremap <C-p> :r !pbpaste<CR>
nnoremap <silent> <leader>f :Format<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

"Cursor Config
:set guicursor=a:blinkon250

"Search Config
:set ignorecase
:set smartcase

"Indenting
:set shiftwidth=2
:set autoindent
:set smartindent
:set number relativenumber

" rust
syntax enable
filetype plugin indent on
let g:rustfmt_autosave = 1
