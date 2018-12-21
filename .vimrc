set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'tmhedberg/SimpylFold'
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'Valloric/YouCompleteMe'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdcommenter'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
 set foldmethod=indent
 set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

"To view docstring of folded code
let g:SimpylFold_docstring_preview=1

"Python indentation - PEP8
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"Flagging bad whitespaces
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"UTF-8 support
set encoding=utf-8

"YCM customization
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Make code look pretty
let python_highlight_all=1
syntax on

"Toggle colourscheme
"call togglebg#map("<F5>")

"Hide .pyc files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"Because of this, system clipboard becomes vim clipboard as well
set clipboard=unnamed

"Map <buffer> + F9, to run python script
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>


nnoremap <F2> :NERDTreeToggle<CR>
nnoremap v+ :vertical resize +5<CR>
nnoremap v- :vertical resize -5<CR>
nnoremap s- :resize -5<CR>
nnoremap s+ :resize +5<CR>
