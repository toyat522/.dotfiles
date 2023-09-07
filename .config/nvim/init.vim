filetype on
syntax on
filetype plugin indent on

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

" Some servers have issues with backup files
set nobackup
set nowritebackup

set nocompatible
set ttyfast
set expandtab
set lazyredraw
set confirm
set ruler
set autoindent
set number
set hlsearch
set cursorline
set showmatch
set nostartofline
set showmode
set wildmenu
set smarttab
set smartindent
set wildmode=list:longest
set mouse=a
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Always show signcolumn
set signcolumn=yes

" Numerical settings
set shiftwidth=4
set tabstop=4
set history=100
set updatetime=300
set cmdheight=2

" Use clipboard for cut and paste
set clipboard+=unnamedplus

" Clear last used search pattern
let @/ = ""



"-------- Vim-Plug plugins --------"

call plug#begin('~/.config/nvim/plugged')

"Plug 'cocopon/iceberg.vim'
"Plug 'gkeep/iceberg-dark'
Plug 'scrooloose/nerdtree'
"Plug 'nvim-tree/nvim-web-devicons'
"Plug 'nvim-tree/nvim-tree.lua'
Plug 'EdenEast/nightfox.nvim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'gosukiwi/vim-atom-dark'
Plug 'jiangmiao/auto-pairs'
Plug 'lervag/vimtex'
Plug 'Maxattax97/coc-ccls'
Plug 'tpope/vim-fugitive'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'itchyny/lightline.vim'

call plug#end()



"-------- coc.nvim stuff here --------"

" use <Tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
			\ coc#pum#visible() ? coc#pum#next(1) :
			\ CheckBackspace() ? "\<Tab>" :
			\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
endif

" disable startup warning
let g:coc_disable_startup_warning = 1



"-------- NERDTree stuff here --------"

" <C-n> for toggling nerdtree 
nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1



"-------- Colorscheme --------"
set termguicolors
"colorscheme iceberg
colorscheme nightfox



"-------- Miscellaneous plugins --------"

" lightline color configuration
"let g:lightline = {'colorscheme': 'icebergDark'}
let g:lightline = {'colorscheme': 'nightfox'}

" vimtex settings
let g:vimtex_view_general_viewer = 'zathura'
