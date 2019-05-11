set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set nu
set encoding=utf-8

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set hlsearch


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" Keep Plugin commands between vundle#begin/end.
" let Vundle manage Vundle, required
Plugin 'mhartington/vim-angular2-snippets'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'majutsushi/tagbar'
Bundle 'Blackrush/vim-gocode'


" All of your Plugins must be added before the following line
call vundle#end()            " required



execute pathogen#infect()

filetype plugin indent on    " required
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_min_num_of_chars_for_completion = 2

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0

let g:cpp_member_variable_highlight = 1

let g:cpp_class_decl_highlight = 1
let g:go_gocode_unimported_packages = 1

let g:ycm_semantic_triggers =  {'c' : ['->', '.'], 'go' : ['.'], 'cpp,objcpp' : ['->', '.', '::']}

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_rust_src_path = '/home/me/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/'

:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

:autocmd BufRead,BufNewFile *.cmake,CMakeLists.txt,*.cmake.in runtime! indent/cmake.vim 
:autocmd BufRead,BufNewFile *.cmake,CMakeLists.txt,*.cmake.in setf cmake
:autocmd BufRead,BufNewFile *.ctest,*.ctest.in setf cmake

" let &colorcolumn=join(range(101,999),",")

nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
nmap <F8> :TagbarToggle<CR>

let g:tagbar_vertical = 30

vnoremap // y/<C-R>"<CR>
map <C-n> :NERDTreeToggle<CR>

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] 

autocmd FileType typescript syn clear foldBraces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype typescript setlocal ts=2 sw=2 sts=0 expandtab

