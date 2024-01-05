" Enable syntax highlighting
filetype on
syntax on
filetype plugin indent on

" Set encoding
set encoding=UTF-8

" Improve performance
set ttyfast
set lazyredraw

" Remove backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Indent and tab settings
set autoindent
set expandtab
set smartindent
set smarttab

" Enable highlight search 
set hlsearch

" Confirm when closing unsaved files
set confirm

" Show number
set number

" Show cursorline
set cursorline

" Show matching parenthesis
set showmatch 

" Show symbols on error message
set signcolumn=yes

" Copy/paste from system clipboard
set clipboard=unnamedplus

" Use mouse
set mouse=a

" Configure wildmenu and statusline
set noshowmode
set wildmenu
set wildmode=longest:list,full
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Numerical settings
set shiftwidth=4
set softtabstop=4
set tabstop=4
set history=100
set updatetime=300
set cmdheight=2

" Clear last used search pattern
let @/ = ""



"-------- Vim-Plug plugins --------"

call plug#begin('~/.config/nvim/plugged')

" NERDTree
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Tab bar settings
Plug 'romgrk/barbar.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'lewis6991/gitsigns.nvim'

" Themes
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/sonokai'
Plug 'ayu-theme/ayu-vim'

" Utility
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'lervag/vimtex'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

call plug#end()



"-------- coc.nvim settings --------"

" Use tab for trigger completion with characters ahead and navigate
function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr><TAB>
			\ coc#pum#visible() ? coc#pum#next(1) :
			\ CheckBackspace() ? "\<Tab>" :
			\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
inoremap <silent><expr><CR> coc#pum#visible() ? coc#pum#confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Disable startup warning
let g:coc_disable_startup_warning = 1



"-------- NERDTree settings --------"

let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1

" <C-n> for toggling nerdtree 
nmap <C-n> :NERDTreeToggle<CR>

" Remove DIR arrows
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0"



"-------- barbar settings --------#

" Move to previous/next
nnoremap <silent><A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent><A-.> <Cmd>BufferNext<CR>

" Close buffer
nnoremap <silent><A-c> <Cmd>BufferClose<CR>



"-------- Themes --------"
set termguicolors
let ayucolor="mirage"
colorscheme ayu
let g:lightline = { 'colorscheme': 'one' }

"-------- Vimtex settings --------"
let g:vimtex_view_general_viewer = 'zathura'
