set title "編集中のファイル名を表示
set wrap         "長い行を折り返して表示
set scrolloff=16 "カーソル移動時に上下16行の視界を確保する
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

" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
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
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
let g:netrw_altv = 1

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
" NeoBundle 'scrooloose/nerdtree'
" NeoBundle 'b4b4r07/vim-shellutils'
" ファイルオープンを便利に
NeoBundle 'Shougo/unite.vim'
" Unite.vimで最近使ったファイルを表示できるようにする
NeoBundle 'Shougo/neomru.vim'
" NeoBundle 'tpope/vim-fugitive'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'kana/vim-submode'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
colorscheme desert256
syntax on

set splitright
set splitbelow
set mouse=a
set clipboard=unnamed,autoselect

"-----------------------------------------------------------------------------
"" netrw(ディレクトリ表示)
"
"" netrwは常にtree view
let g:netrw_liststyle = 3

" CVSは表示しない
let g:netrw_list_hide = 'NetrwTreeListing,CVS,^\.svn/$'
"
" " 'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
let g:netrw_altv = 1
"
" " 'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
let g:netrw_alto = 1
"
" " netrwでディレクトリを移動した時、移動先をカレントディレクトリに設定する
let g:netrw_keepdir = 0
"
" " カーソル位置を保持する
let b:netrw_col = 1
"
" " 現在の行番号を保持する
let b:netrw_line = 1

"nnoremap s <Nop>
"nnoremap sj <C-w>j
"nnoremap sk <C-w>k
"nnoremap sl <C-w>l
"nnoremap sh <C-w>h
"nnoremap sJ <C-w>J
"nnoremap sK <C-w>K
"nnoremap sL <C-w>L
"nnoremap sH <C-w>H
"nnoremap sn gt
"nnoremap sp gT
"nnoremap sr <C-w>r
"nnoremap s= <C-w>=
"nnoremap sw <C-w>w
"nnoremap so <C-w>_<C-w>|
"nnoremap sO <C-w>=
"nnoremap sN :<C-u>bn<CR>
"nnoremap sP :<C-u>bp<CR>
"nnoremap st :<C-u>tabnew<CR>
"nnoremap sT :<C-u>Unite tab<CR>
"nnoremap ss :<C-u>sp<CR>
"nnoremap sv :<C-u>vs<CR>
"nnoremap sq :<C-u>q<CR>
"nnoremap sQ :<C-u>bd<CR>
"nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
"nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
"
call submode#enter_with('bufmove', 'n', '', '>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', '<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', '+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', '-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')
