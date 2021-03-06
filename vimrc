"                Minhas Configs Para O Vim

"author: George Henrique <georgehenriquecampos@gmail.com>
"license:  GPLv3

"[==========================##=======================]

"                   Configs Do Editor

"[==========================##=======================]

set number "Numera As Linhas Do Arquivo

set tabstop=4 "Tabulação Do Texto
set shiftwidth=4
set expandtab

set nowrap "Quebra De Linha

set autoindent "Indentação Automatica
set smartindent

set encoding=UTF-8 "Acentua Os Caracteres

set wildmenu "Menu Melhorado

set incsearch "Busca Melhorada
set hlsearch
set ignorecase 
set smartcase 

syntax enable "Habilita O Destaque De Sintaxe
set showmatch

set nobackup nowritebackup "Sem Backup

"[==========================##=======================]

"                    Plugins - Vim

"[==========================##=======================]

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' "Gerenciador De Plugins 
Plugin 'sheerun/vim-polyglot' "Syntax Moderna

Plugin 'ryanoasis/vim-devicons' "Icones

Plugin 'scrooloose/nerdtree' "Arvore De Arquivos
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' "Icones Da Arvore De Arquivos

Plugin 'jiangmiao/auto-pairs' "AutoComplete De Pares

Plugin 'vim-airline/vim-airline' "Linha De Status
Plugin 'vim-airline/vim-airline-themes'

Plugin 'morhetz/gruvbox' "Tema De Cores

Plugin 'ervandew/supertab' "Auto-Complete Vim
call vundle#end()
filetype plugin indent on

"[==========================##=======================]

"             Configurações Dos Plugins

"[==========================##=======================]

"Cores

set background=dark "Cores Do Layout   
colorscheme gruvbox
let g:airline_theme='bubblegum'

"Config Airline 

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
        let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"Config NerdTree

autocmd VimEnter * NERDTree "Abre Arvore De Arquivos
autocmd VimEnter * wincmd p

let g:NERDTreeWinPos = "left" "Configura O Tamanho
let NERDTreeShowHidden=0
let g:NERDTreeWinSize=25

let g:NERDTreeFileExtensionHighlightFullName = 1 "Configura Os Icones
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

"Auto-Complete

let g:SuperTabDefaultCompletionType = "<c-n>" "Define Caixa
"[==========================##=======================]
