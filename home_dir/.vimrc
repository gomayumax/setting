if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')

      call dein#add('itchyny/lightline.vim')
  endif

  call dein#add('itchyny/lightline.vim')
  call dein#add('tomasr/molokai')
  call dein#add('Townk/vim-autoclose')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('othree/eregex.vim')
  call dein#add('posva/vim-vue')
  call dein#add('godlygeek/tabular') 		" マークダウン用 (こっちが先じゃないと動かない!!)
  call dein#add('plasticboy/vim-markdown')	" マークダウン用

  call dein#end()
  call dein#save_state()
endif

" プラグインのインストールをチェック 未インストールのプラグインがあればインストールする
if dein#check_install()
 call dein#install()
endif

" lightline
let g:lightline = { 'colorscheme': 'wombat' }

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

"molokai
let g:molokai_original = 1
colorscheme molokai
set t_Co=256

" タイトルを表示
set title

" □や○などの文字があってもカーソル位置がずれないようにする
set ambiwidth=double

" 行番号表示
set number

" インデント設定
set autoindent
set expandtab
set tabstop=2     " TABの見た目幅
set shiftwidth=4  " autoindent時のスペース量
set softtabstop=0 " TAB展開時のスペース量(0:tsと同量)

" クリップボードを共有
set clipboard=unnamed

" タブと行末スペースを可視化する
set list
set listchars=tab:\:\ ,trail:~

" セミコロンでもコマンドが使えるようにする
noremap ; :

" jjでインサートモードを抜ける
inoremap jj <ESC>

" カレント行をハイライト
set cursorline

" lightline
let g:lightline = { 'colorscheme': 'wombat' }
