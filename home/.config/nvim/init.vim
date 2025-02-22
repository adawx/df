" ============================================================================
" Plugins 
" ============================================================================

call plug#begin()
	" Sort through to see whats needed
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'townk/vim-autoclose'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-surround'

	Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
	Plug 'kyazdani42/nvim-tree.lua'

	Plug 'ryanoasis/vim-devicons'
	Plug 'rbgrouleff/bclose.vim'
	Plug 'vim-scripts/BufOnly.vim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
	Plug 'mbbill/undotree'
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'f-person/git-blame.nvim'

	" TreeSitter
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'nvim-treesitter/nvim-treesitter-context'

	" Lf (vim-floaterm has to go 2nd) 
"	Plug 'ptzz/lf.vim'
"	Plug 'voldikss/vim-floaterm'

	" LSP Stuff
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'onsails/lspkind-nvim'
	Plug 'jparise/vim-graphql'

	" vsnip
	Plug 'hrsh7th/vim-vsnip'
	Plug 'hrsh7th/vim-vsnip-integ'

	Plug 'github/copilot.vim'
	Plug 'nvim-lua/lsp_extensions.nvim'
	Plug 'williamboman/nvim-lsp-installer'

	" Telescrope reqs
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-telescope/telescope-fzy-native.nvim'
	
	" prettier
	Plug 'sbdchd/neoformat'
	
	" rust
	Plug 'rust-lang/rust.vim'
	Plug 'simrat39/rust-tools.nvim'
	
	" Info lines
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }

	" Theme
	Plug 'sheerun/vim-polyglot'
	"Plug 'EdenEast/nightfox.nvim'
	"Plug 'folke/tokyonight.nvim'
	Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

	" Formatting
	Plug 'mhartington/formatter.nvim'
call plug#end()


" ============================================================================
" Theme Config
" ============================================================================

set termguicolors

if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
endif

colorscheme spaceduck
hi Normal guibg=none
hi NormalFloat guibg=none
hi NormalNC guibg=none
hi NvimTreeWindowPicker guibg=none
hi NvimTreeNormal guibg=none

" ============================================================================
" Lua Config
" ============================================================================

lua << END
require('alex')
END

" ============================================================================
" Plugin Config 😡
" ============================================================================

" let g:lf_map_keys = 0
" map <leader>o :Lf<CR>
" let g:lf_replace_netrw = 1 " Open lf when vim opens a directory

" ============================================================================
" Key Remapping & Generic Vim Config
" ============================================================================

"Split Moving
nnoremap <silent> <C-h> <c-w>h
nnoremap <silent> <C-l> <c-w>l
nnoremap <silent> <C-k> <c-w>k
nnoremap <silent> <C-j> <c-w>j

" Key Rebinds & Buffer Config
nnoremap <space> :
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <F6> :UndotreeToggle<CR>
nmap <F7> :NvimTreeToggle<CR>
nnoremap <F8> :Bclose!<CR>
nnoremap <F10> :Bclose<CR>
nnoremap <F11> :wBclose<CR>
nnoremap <F19> :qa<CR>
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <C-o> <C-o>zz
nnoremap n nzz
nnoremap N Nzz
:set hidden
:set mouse=a

nnoremap <silent> <leader>fm :Format<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>cf :let @*=expand("%")<CR>

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

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

" winbar
set winbar=
set winbar +=%1*\ %n\ %*            "buffer number
set winbar +=%3*%y%*                "file type
set winbar +=%4*\ %<%f%*            "full path
set winbar +=%2*%m%*                "modified flag
set winbar +=%1*%=%5l%*             "current line
set winbar +=%2*/%L%*               "total lines
set winbar +=%1*%4v\ %*             "virtual column number
set winbar +=%2*0x%04B\ %*          "character under cursor

" do not close the preview tab when switching to other buffers
let g:mkdp_auto_close = 0
nmap <F1> <Plug>MarkdownPreview
