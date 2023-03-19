colorscheme question-mark

" General setup
set colorcolumn=80
set tw=80
syntax on
set number
set showmode
set spell
set spelllang=en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
let python_highlight_all = 1

" Vim plugins setup
call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
Plug 'scrooloose/nerdtree'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jayli/vim-easycomplete'

call plug#end()

" NERDtree plugin setup

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" VimTex plugin setup
filetype plugin indent on
syntax enable

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let maplocalleader = ","
let g:vimtex_view_forward_search_on_start=0

" Ultisnips setup

let g:UltiSnipsSnippetDirectories = ['~/.vim/plugged/vim-easycomplete/snippets/ultisnips/']
let g:easycomplete_tab_trigger="<c-space>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
