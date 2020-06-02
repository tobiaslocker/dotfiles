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
Plugin 'yuezk/vim-js'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'pangloss/vim-javascript'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-ragtag'
Plugin 'davidhalter/jedi-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'
Bundle 'Blackrush/vim-gocode'

" All of your Plugins must be added before the following line
call vundle#end()            " required

execute pathogen#infect()

filetype plugin indent on    " required
let g:ycm_seed_identifiers_with_syntax = 1
" let g:ycm_server_keep_logfiles = 1
" let g:ycm_server_log_level = 'debug'

let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_min_num_of_chars_for_completion = 2

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0

let g:cpp_member_variable_highlight = 1

let g:cpp_class_decl_highlight = 1
let g:go_gocode_unimported_packages = 1

let g:ycm_semantic_triggers = 
            \{'c' : ['->', '.'], 'go' : ['.'], 'cpp,objcpp' : ['->', '.', '::']}

" let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_rust_src_path = 
            \'~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/'

let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/.global_extra_conf.py'

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

" let g:jedi#show_call_signatures = "0"
"
autocmd FileType python call jedi#configure_call_signatures()
let g:pymode_rope = 0

autocmd FileType python setlocal completeopt-=preview
autocmd FileType rust setlocal completeopt-=preview
autocmd FileType go setlocal completeopt-=preview

autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType htmldjango  setlocal ts=2 sts=2 sw=2
autocmd FileType javascript  setlocal ts=2 sts=2 sw=2
