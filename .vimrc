syntax on

set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'othree/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'tomasr/molokai'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Shougo/neocomplcache'
colorscheme molokai

filetype plugin indent on

" 常にステータスラインを表示
set laststatus=2

" vim-powerline用
let g:Powerline_symbols = 'fancy'
set t_Co=256

" カーソルキーで行末／行頭の移動可能に設定
set whichwrap=b,s,[,],<,>

" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start

" □や○の文字があってもカーソル位置がずれないようにする
set ambiwidth=double

" コマンドライン補完するときに強化されたものを使う
set wildmenu

" 行番号表示
set number

" 括弧の対応表示時間
set showmatch matchtime=3

" タブを設定
set ts=4 sw=4 sts=4

" 自動的にインデントする
set tabstop=2
set autoindent
set expandtab
set shiftwidth=2

" クリップボードを共有
set clipboard=unnamed,autoselect

" カレント行に下線
set cursorline
highlight CursorLine ctermbg=Black
" highlight CursorLine ctermfg=Blue
