"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/d-yokozawa/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/d-yokozawa/.cache/dein')
  call dein#begin('/Users/d-yokozawa/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/d-yokozawa/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('dense-analysis/ale')
  call dein#add('tpope/vim-endwise')
  call dein#add('tpope/vim-rails')
  call dein#add('tpope/vim-rbenv')
  call dein#add('vim-ruby/vim-ruby')
  call dein#add('Yggdroot/indentLine')
  call dein#add('slim-template/vim-slim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

call map(dein#check_clean(), "delete(v:val, 'rf')")

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" End dein Scripts-------------------------

" START aleの設定-------------------------

" ファイルセーブ時にチェックする
let g:ale_lint_on_save = 1

" テキスト編集時にチェックしない
let g:ale_lint_on_text_changed = 0

" ファイルオープン時にチェックしたくない場合
let g:ale_lint_on_enter = 0

" 特定のファイルでlinterを動かす
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}
let g:ale_ruby_rubocop_executable = 'bundle'
highlight ALEWarning ctermbg=240

" END aleの設定-------------------------

" 行番号を表示
set number

" 行頭行末の左右移動で行をまたぐようにする
set whichwrap=b,s,h,l,<,>,[,]

" Backspaceの影響範囲に制限を設けないようにする
set backspace=indent,eol,start

" ヤンクしてクリップボードニコピー
set clipboard=unnamed

" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2

"画面上でタブ文字が占める幅
set tabstop=2

" 検索時に大文字と小文字を区別しない
set ignorecase

" 検索時に大文字から始まった場合は小文字を区別する
set smartcase

" 検索ワードの最初の文字を入力した時点で検索が開始される
set incsearch

" ハイライト検索
set hlsearch
