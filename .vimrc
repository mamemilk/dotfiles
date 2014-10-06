set nocompatible "vi非互換モード

" http://momota.github.io/blog/2013/08/29/vim-plugins/
if has('vim_starting')
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc', {
        \ 'build' : {
                \ 'windows' : 'make -f make_mingw32.mak',
                \ 'cygwin' : 'make -f make_cygwin.mak',
                \ 'mac' : 'make -f make_mac.mak',
                \ 'unix' : 'make -f make_unix.mak',
        \ },
\ }

filetype plugin indent on     " Required!

" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

" GitHubリポジトリにあるプラグインを利用する
" --> NeoBundle 'USER/REPOSITORY-NAME'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'davidoc/taskpaper.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'altercation/vim-colors-solarized'

"GitHub以外のGitリポジトリにあるプラグインを利用する
NeoBundle 'git://git.wincent.com/command-t.git'

" vim-scripts リポジトリにあるプラグインを利用する
NeoBundle 'surround.vim'

"Git以外のリポジトリにあるプラグインを利用する
NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'




"#######################
" 表示系
"#######################
"set number "行番号表示
set showmode "モード表示 挿入モードで左下にinsertと表示
set title "編集中のファイル名を表示
set ruler "ルーラーの表示 右下に行番号等を表示
set showcmd "入力中のコマンドをステータスに表示する
set showmatch "括弧入力時の対応する括弧を表示
set laststatus=2 "ステータスラインを常に表示

set encoding=utf-8
set fileencodings=iso-2022-jp,ecu-jp,cp932,utf-8

set fileformats=unix,dos,mac
set background=dark

" タブ表示
"set lcs=tab:>.,trail:_,extends:\
"set list
"highlight SpecialKey cterm=NONE ctermfg=7 guifg=7
"highlight JpSpace cterm=underline ctermfg=7 guifg=7
"au BufRead,BufNew * match JpSpace /　/


"#######################
" プログラミングヘルプ系
"#######################
syntax on "カラー表示

set background=dark
colorscheme solarized

set smartindent "オートインデント
" tab関連
set expandtab "タブの代わりに空白文字挿入
set ts=4 sw=4 sts=0 "タブは半角4文字分のスペース

" ファイルを開いた際に、前回終了時の行で起動
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

set foldmethod=syntax
set foldlevel=100 "Don't autofold anything

"#######################
" 検索系
"#######################
set ignorecase "検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
"set wrapscan "検索時に最後まで行ったら最初に戻る
set noincsearch "検索文字列入力時に順次対象文字列にヒットさせない
"set nohlsearch "検索結果文字列の非ハイライト表示



"#######################
" KeyRemap
"#######################

nnoremap <silent> ; :

" カーソル移動
inoremap <silent> <C-p> <Up>
inoremap <silent> <C-n> <Down>
inoremap <silent> <C-b> <Left>
inoremap <silent> <C-f> <Right>
inoremap <silent> <C-e> <End>
inoremap <silent> <C-a> <Home>
inoremap <silent> <C-d> <Del>
" カーソルのある行を画面中央に
inoremap <silent> <C-l> <C-o>zz
" カーソルより前の文字を削除
inoremap <silent> <C-u> <C-o>d0
" カーソルより後の文字を削除
inoremap <silent> <C-k> <c-o>D
" 貼りつけ
inoremap <C-y> <C-o>P
