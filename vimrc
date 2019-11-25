"Minha configuração do .vimrc lembrando que eu irei, configurar para meu gosto '.'

"[====================================##============================]

"Formatação de texto 

set nocompatible
set encoding=utf-8 
set fileencoding=utf-8  
set number
set nowrap
set nolinebreak
set sm
set noai
set shiftwidth=4
set tabstop=4

"[==================================##===============================]

"Turbinando a busca

set is hls ic scs 

"[=================================##=================================]

"Desabilitando backup

set nobackup
set noswapfile
set nowritebackup

"[==============================##=====================================]

"Plugs

call plug#begin('~/.vim/plugged')
Plug 'shapeoflambda/dark-purple.vim'
Plug 'scrooloose/nerdtree' 
Plug 'jiangmiao/auto-pairs'
Plug 'cakebaker/scss-syntax.vim'
Plug 'jelera/vim-javascript-syntax'
call plug#end()

filetype plugin indent on
syntax enable
autocmd vimenter * NERDTree
colorscheme dark_purple

"[=============================##====================================]
