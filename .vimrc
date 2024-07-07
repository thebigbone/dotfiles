:set number
":set relativenumber
:set scrolloff=8
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
colorscheme pablo
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
" Plug 'pangloss/vim-javascript'
" Plug 'maxmellon/vim-jsx-pretty'
" Plug 'dense-analysis/ale'
" Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
" Plug 'eemed/sitruuna.vim'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/go.nvim'
Plug 'maralla/completor.vim'
" Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
" List ends here. Plugins become visible to Vim after this call.

call plug#end()

"autocomplete"
filetype plugin on
set omnifunc=syntaxcomplete#Complete


let mapleader = " " 
nnoremap <leader>pv :Vex<CR>

" tab autocomplete for coc.vim
" inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"

" Enable lsp for go by using gopls
let g:completor_filetype_map = {}
let g:completor_filetype_map.go = {'ft': 'lsp', 'cmd': 'gopls -remote=auto'}"
