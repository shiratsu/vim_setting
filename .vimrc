set title "編集中のファイル名を表示
" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd

" 行番号を表示
set number
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" Tab系
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch

set rtp+=~/.fzf

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

"----------------------------------------------------------------------
"" Required:
set runtimepath+=/Users/hiratsukashu/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/hiratsukashu/.vim/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/vimproc')
call dein#add('flazz/vim-colorschemes')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif


" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()
"
"---------------------------------------------------------------------


" "
" " Required:
filetype plugin indent on
"
" " If there are uninstalled bundles found on startup,
" " this will conveniently prompt you to install them.
" NeoBundleCheck
colorscheme desert256
syntax on
"
" set mouse=a
set clipboard=unnamed,autoselect
"
" "-----------------------------------------------------------------------------
" "" netrw(ディレクトリ表示)
" "
" "" netrwは常にtree view
let g:netrw_liststyle = 3
"
" " " 'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
let g:netrw_altv = 1
" "
" " " 'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
let g:netrw_alto = 1
" "
" " " netrwでディレクトリを移動した時、移動先をカレントディレクトリに設定する
let g:netrw_keepdir = 0
" "
" " " カーソル位置を保持する
let b:netrw_col = 1
" "
let g:airline#extensions#tabline#enabled = 1
"
ab bk Rexplore
ab vmsl VimShell
"
nnoremap > <C-w>>
nnoremap < <C-w><
nnoremap ll <C-w>l
nnoremap hh <C-w>h
