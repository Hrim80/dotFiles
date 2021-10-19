"---- General Settings-------
set number
set ruler
set showcmd
set incsearch
set hlsearch
set backspace=indent,eol,start
set clipboard=unnamed
set rtp+=~/.vim/bundle/Vundle.vim
set tabstop=4
set shiftwidth=4
syntax on

"______ Plugins_______

call vundle#begin('~/.vim/plugged')

Plugin 'junegunn/vim-easy-align'
Plugin 'https://github.com/junegunn/vim-github-dashboard.git'
"Plugin 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plugin 'tpope/vim-fireplace', { 'for': 'clojure' }
Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plugin 'fatih/vim-go', { 'tag': '*' }
Plugin 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plugin '~/my-prototype-plugin'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-fugitive'
Plugin 'https://github.com/sonph/onehalf'
Plugin 'flazz/vim-colorschemes'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'frazrepo/vim-rainbow'
Plugin 'airblade/vim-gitgutter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mhinz/vim-startify'
"Plug 'valloric/youcompleteme'
"Plugin 'w0rp/ale'
"Plugin 'AutoComplPop'

call vundle#end()

" ----- Plugin-Specific Settings --------------------------------------

" ----- altercation/vim-colors-solarized settings -----
" Toggle this to "light" for light colorscheme
set background=dark

" Uncomment the next line if your terminal is not configured for solarized
let g:solarized_termcolors=256
let g:molokai_original = 1

" Set the colorscheme
colorscheme tender

"let g:airline_theme='onehalfdark'

let g:lightline = {
      \ 'colorscheme': 'landscape',
      \ }


" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
"let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

let g:SimpylFold_docstring_preview=1

let g:airline#extensions#tabline#formatter = 'default'  " f/p/file-name.js
let g:airline#extensions#tabline#formatter = 'jsformatter' " path-to/f
let g:airline#extensions#tabline#formatter = 'unique_tail' " file-name.js
let g:airline#extensions#tabline#formatter = 'unique_tail_improved' " f/p/file-name.js


" ======= Key mappings ========

nmap <tab> :NERDTreeToggle<CR>
noremap <C-V> <ESC>:paste<CR><S-Insert><ESC>:nopaste<CR>
nmap <F5> :Files<CR>
nmap \ dd
nmap <S-S> viw
vmap \ U
imap <c-d> <esc> ddi
nmap q :q! <CR>
nmap s :w <CR>
noremap <space> za
nmap a :wq <CR>



"" ---------- TABS KEYBINDINGS ----------- ""

"" NEW TAB ""

noremap t :tabnew <CR>

"" SWITCH TO SPECIFIC TAB ""

noremap <space>1 1gt
noremap <space>2 2gt
noremap <space>3 3gt
noremap <space>4 4gt
noremap <space>5 5gt
noremap <space>6 6gt
noremap <space>7 7gt
noremap <space>8 8gt
noremap <space>9 9gt
noremap <space>10 10gt

"" SWITCH TO NEXT/PREVIOUS TAB

noremap 9 :tabp <CR>
noremap 0 :tabn <CR>

"" SPLITSCREEN TABS ""

noremap <s-h> :sp <CR>
noremap <s-v> :vsp <CR>

"" RESIZING TABS ""

noremap <s-tab> :vertical resize +2 <CR>
"noremap <s-.> :vertical resize -2 <CR>
noremap <s-*> :resize +2 <CR>
noremap <s-/> :resize -2 <CR>




" Enable folding
set foldmethod=indent
set foldlevel=99

"===========================
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
