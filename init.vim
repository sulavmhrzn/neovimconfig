set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a

call plug#begin()
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/rafi/awesome-vim-colorschemes.git' " Color schemes
Plug 'jiangmiao/auto-pairs' " Bracket pair
Plug 'https://github.com/tpope/vim-fugitive.git' " Git
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Code completion
Plug 'glepnir/dashboard-nvim' " Dashboard
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/junegunn/fzf'
call plug#end()


colorscheme gruvbox

" To exit insert mode quickly
inoremap jj <Esc>

" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:dashboard_default_executive ='fzf'

" NOTES
" Install a nerd font for vim-devicons

