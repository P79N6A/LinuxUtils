"--------------------bundle, Vim plugins manager--------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'Yggdroot/indentLine'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"----------------all above added to use bundle---------------------------


syntax on               " 语法高亮

set autoindent
set expandtab           "设置用空格代替Tab, 那么tabstop就没用了，softtabstop决定tabs空格数
set tabstop=2           "Tab键的宽度
set softtabstop=4       "Tab键的宽度
set shiftwidth=4        "默认vim的缩进宽度为8个空格，修改缩进的宽度为4个空格

set number              "显示行号
set backspace=indent,eol,start "在insert模式下，启用backspace


"--------------indent line相关---------------------------------------------
"indentLine 颜色设置
let g:indentLine_color_term = 239    "terminal 中的颜色
let g:indentLine_color_tty_light = 7 "(default: 4)
let g:indentLine_color_dark = 1      "(default: 2)

let g:indentLine_enabled = 1 "默认开启indentLine
let g:indentLine_char = '|'  "填充字符
"-------------------------------------------------------------------------






