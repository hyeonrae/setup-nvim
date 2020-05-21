let mapleader =" "

set rtp+=~/.config/nvim/vimrc.d/
runtime! load-plug.vim

" ## Basic Settings
    set nocompatible
    filetype plugin indent on
    syntax on
    set clipboard+=unnamedplus
    set mouse=

" color scheme
    set t_Co=256
    set fillchars+=vert:│
"    set fillchars+=stl:─
"    set fillchars+=stlnc:─
"    colorscheme gruvbox
    set background=light
    colorscheme PaperColor

" Transperation
"    hi Normal ctermbg=none guibg=none
"    hi VertSplit ctermbg=none guibg=none

"    " background when typing hangul
"    hi Identifier ctermfg=black guifg=black
    hi EndOfBuffer ctermfg=black
    
" visual config
    set laststatus=2
    set splitbelow splitright
    "set colorcolumn=80
    "
" number
    set number relativenumber
    set numberwidth=4

" text editing setting
    set autoindent
    set cindent
    set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

    set tabstop=4
    set shiftwidth=4    "< , >
    set expandtab       "tab to space

    set nowrap
    set lbr
    "set tw=80

    set wildmenu
    set wildmode=longest,list,full

"auto complete
    set completeopt=menuone,preview

" searching option
    set nowrapscan
    set ignorecase
    set incsearch
    set hlsearch

" backup/save option
    set nobackup
    set history=1000

" info alram
    set visualbell
    set ruler

    set list
    set listchars=eol:$,tab:>-,space:⋅

" encoding
    set fencs=ucs-bom,utf-8,euc-kr.latin1
    set fileencoding=utf-8
    set tenc=utf-8

" coding
    set wmnu
    " python setting
    let g:python_highlight_all=1

    let g:clipboard = {
  \   'name': 'xclip-xfce4-clipman',
  \   'copy': {
  \      '+': 'xclip -selection clipboard',
  \      '*': 'xclip -selection clipboard',
  \    },
  \   'paste': {
  \      '+': 'xclip -selection clipboard -o',
  \      '*': 'xclip -selection clipboard -o',
  \   },
  \   'cache_enabled': 1,
  \ }

" Activate and deactivate `cursorline`
augroup Cursorline
  autocmd!
  autocmd WinEnter,BufEnter * set cursorline
  autocmd WinLeave,BufLeave * set nocursorline
augroup END

"imap <esc> <right> | <esc>
