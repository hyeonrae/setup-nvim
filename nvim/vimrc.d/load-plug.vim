
runtime! install-plug.vim

" ## VIM Plugin Import
call plug#begin('~/.config/nvim/plugged')
" file manager
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf.vim'

" navigating
Plug 'easymotion/vim-easymotion'

" theme
"Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'

"Plug 'dracula/vim',{'as':'dracula'}
Plug 'itchyny/lightline.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine', { 'on': 'IndentLinesEnable' }
  autocmd! User indentLine doautocmd indentLine Syntax
  let g:indentLine_color_term = 239
  let g:indentLine_color_gui = '#616161'

Plug 'ap/vim-css-color'

" Auto Complete Plugin : YCM, deoplete, ncm2
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plug 'SirVer/ultisnips'

" dashboard
Plug 'mhinz/vim-startify'
Plug 'elentok/plaintasks.vim'

" writing
Plug 'vimwiki/vimwiki', {'branch':'dev'}
Plug 'reedes/vim-pencil'
"Plug 'junegunn/goyo.vim'
"Plug 'junegunn/limelight.vim'
"Plug 'vimoutliner/vimoutliner'

"Plug 'jceb/vim-orgmode'
"Plug 'mattn/calendar-vim'

" latex
Plug 'lervag/vimtex'

" git
Plug 'tpope/vim-fugitive'
"vim-surround
"vim-easymotion
"GitGutter
"ctrlp
"pudb.vim
"
call plug#end()

" nerdtree setting
    map <leader>t :NERDTreeToggle<cr>
    let g:NERDTreeShowHidden=1
    "let g:NERDChristmasTree=1
    let g:NERDTreeWinSize=25

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }
set noshowmode

"if !exists('g:include_set_airline_loaded')
"    let g:include_set_airline_loaded = 1
"    "let g:airline_theme='luna'
"    let g:airline_theme='minimalist'
"    let g:airline_powerline_fonts = 1
"    let g:airline#extensions#tabline#enabled = 1     " vim-airline 버퍼 목록 켜기
"    let g:airline#extensions#tabline#fnamemod = ':t' " vim-airline 버퍼 목록 파일명만 출력
"    let g:airline#extensions#tabline#buffer_nr_show = 1 " buffer number 를 보여준다
"    let g:airline#extensions#tabline#buffer_nr_format = '%s:' " buffer number format
"
"    let g:airline_symbols = {}
"
"    " airline symbols
"    let g:airline_left_sep = ''
"    let g:airline_left_alt_sep = ''
"    let g:airline_right_sep = ''
"    let g:airline_right_alt_sep = ''
"    let g:airline_symbols.branch = ''
"    let g:airline_symbols.readonly = ''
"    let g:airline_symbols.linenr = ''
"    let g:airline_symbols.paste = 'ρ'
"    let g:airline_symbols.whitespace = 'Ξ'
"endif

"" YCM
"if !exists('g:include_set_youcompleteme_loaded')
"    let g:include_set_youcompleteme_loaded = 1
"
"    let g:ycm_key_list_select_completion = ['<C-n>']    " 본래 <Tab> 이지만 ultisnip 과 충돌을 막기 위해 변경
"    let g:ycm_key_list_previous_completion=['<C-p>']
"    let g:ycm_server_python_interpreter = '/usr/bin/python3'
"
"    let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
"    let g:ycm_confirm_extra_conf=0
"
"    let g:ycm_complete_in_comments = 1
"    let g:ycm_collect_identifiers_from_comments_and_strings = 1
"    let g:ycm_complete_in_strings = 1
"    let g:ycm_min_num_of_chars_for_completion = 1
"    set completeopt=menuone
"    " let g:ycm_add_preview_to_completeopt = 1
"    " let g:ycm_autoclose_preview_window_after_insertion = 1
"    " let g:ycm_autoclose_preview_window_after_completion = 1
"    " let g:ycm_add_preview_to_completeopt = 0
"    let g:ycm_filetype_blacklist = {}
"
"endif

"coc.nvim

"" UltiSnips
"if !exists('g:include_set_ultisnips_loaded')
    let g:include_set_ultisnips_loaded = 1
"
"    " Trigger configuration.
"    " <Tab> 을 쓴다면 ycm 과 키가 중복되어 제대로 기능하지 않을 수 있다.
"    " 둘 중 하나의 설정을 바꿔준다.
    let g:UltiSnipsExpandTrigger="<Tab>"
    let g:UltiSnipsJumpForwardTrigger="<Right>"
    let g:UltiSnipsJumpBackwardTrigger="<Left>"
    let g:UltiSnipsSnippetDirectories = ['ultisnips']
    "let g:UltiSnipsSnippetsDir = "UltiSnips"
    "let g:UltiSnipsSnippetDirectories = ['/home/hyeonrae/UltiSnips',]

    " python docstring
    let g:ultisnips_python_style="numpy"

    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"
"endif

let g:indentLine_char = '│'
let g:indentLine_color_term = 'DarkGray'
let g:indentLine_fileTypeExclude = ['markdown', 'json']

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 1

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

" autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!

"
" ## Key mapping
    "map <F2> :w<cr>:!python %<cr>
    autocmd FileType python map <F2> :w<cr>:!python %<cr>
    autocmd FileType c map <F2> :w<cr>:!make<cr>

" buffer navigation
    nmap <C-n> :bp<cr>
    nmap <C-m> :bn<cr>

" splite navigation
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

" Vimtex
    let g:tex_flavor = "latex"
    "let g:vimtex_view_method = 'mupdf'
    let g:vimtex_view_method = 'zathura'

"let maplocalleader =" "

" Vimwiki
    let g:vimwiki_list=[
                \{
                \'path':'~/my/docs/_notebook',
                \'syntax':'markdown',
                \'ext':'.md',
                \'diary_rel_path':'diary',
                \},
                \]

    let g:vimwiki_conceallevel=0

    map <leader>w :VimwikiIndex 1<cr>

    " 자주 사용하는 vimwiki 명령어에 단축키를 취향대로 매핑해둔다
    command! WikiIndex :VimwikiIndex
    nmap <leader>ww <Plug>VimwikiIndex
    nmap <leader>wi <Plug>VimwikiDiaryIndex
    nmap <leader>w<leader>w <Plug>VimwikiMakeDiaryNote
    "nmap <leader>wt :VimwikiTable<CR>

    " F4 키를 누르면 커서가 놓인 단어를 위키에서 검색한다.
    nnoremap <F4> :execute "VWS /" . expand("<cword>") . "/" <Bar> :lopen<CR>

    " Shift F4 키를 누르면 현재 문서를 링크한 모든 문서를 검색한다
    nnoremap <S-F4> :execute "VWB" <Bar> :lopen<CR>

    " Vimwiki의 테이블 단축키를 사용하지 않도록 한다
    let g:vimwiki_table_mappings = 0
    
    augroup vimwikiauto
        " <C-s> 로 테이블에서 오른쪽 컬럼으로 이동한다.
        autocmd FileType vimwiki inoremap <C-s> <C-r>=vimwiki#tbl#kbd_tab()<CR>
        " <C-a> 로 테이블에서 왼쪽 컬럼으로 이동한다.
        autocmd FileType vimwiki inoremap <C-a> <Left><C-r>=vimwiki#tbl#kbd_shift_tab()<CR>
    augroup END

" startify
if !exists('g:include_set_startify_loaded')
    let g:include_set_startify_loaded = 1

    nmap <leader><leader> :Startify<CR>
    nmap <leader><leader>s :SSave<CR>

    let g:startify_custom_header = [
                \'    n  e  o  v  i  m',
                \'    s  t  a  r  t  i  f  y',
                \''
                \]
    let g:startify_update_oldfiles = 1
    let g:startify_change_to_vcs_root = 1
    let g:startify_session_sort = 1
    let g:startify_session_persistence = 1

    let g:startify_bookmarks = [
                \ {'v':'~/.config/nvim/init.vim'},
                \ {'b':'~/.bashrc'},
                \ {'':'~/my/docs/_notebook/index.md'},
                \ ]

    let g:startify_commands = [
                \ {'h':':help startify'},
                \ ]

    let g:startify_list_order = [
                \ ['    Sessions'],
                \'sessions',
                \ ['    Bookmarks'],
                \'bookmarks',
                \ ['    Most Recently Used files'],
                \'files',
                \ ['    Commands'],
                \'commands'
                \]

endif

" easymotion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader><Tab> <Plug>(easymotion-bd-w)
nmap <Leader><Tab> <Plug>(easymotion-overwin-w)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto switching IBus engine to Engish when leaving insert mode
" Maintainer:   mozbugbox <mozbugbox@yahoo.com.au>
" License:      GPL version 3 or later
"
" Options:
"     let g:ibus_eng_engine = 'xkb:us::eng'
"     let g:ibus_reset_insert = 1
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if exists("g:loaded_ibusjump")
    finish
endif
let g:loaded_ibusjump = 1

" Use `ibus list-engine` to find a proper English engine name
let g:ibus_eng_engine = get(g:, "ibus_eng_engine", 'xkb:us::eng')

" Reset to saved input engine when entering insert mode
let g:ibus_reset_insert = get(g:, "ibus_reset_insert", 1)


" Set ibus input method to English engine
function! s:SetIBusEng()
    if $DISPLAY == '' | return | endif

    " Fetch current ibus engine
    silent let l:engine_name = system('/usr/bin/ibus engine')
    let b:ibus_engine_name = split(l:engine_name, "\n")[0]

    if b:ibus_engine_name != g:ibus_eng_engine
        silent execute '!/usr/bin/ibus engine ' . g:ibus_eng_engine
    endif
endfunction

" Reset ibus input method to saved engine if any
function! s:SetIBusBack()
    if $DISPLAY == '' | return | endif
    if !g:ibus_reset_insert || get(b:, "ibus_engine_name") == g:ibus_eng_engine
        return
    endif
    silent execute '!/usr/bin/ibus engine ' . b:ibus_engine_name
endfunction

" Connect to insert mode change events
augroup ibus
    autocmd!
    autocmd InsertLeave * :call s:SetIBusEng()
    "autocmd InsertEnter * :call s:SetIBusBack()
augroup END

"-------------------------------------------------------------------------

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,md  call pencil#init({'wrap': 'soft', 'textwidth': 74, 'autoformat':1})
  autocmd FileType text             call pencil#init({'wrap': 'soft', 'textwidth': 74, 'autoformat':1})
  autocmd FileType tex              call pencil#init({'wrap': 'soft', 'textwidth': 74, 'autoformat':1})
augroup END

au! BufRead,BufNewFile TODO     setfiletype votl
au! BufRead,BufNewFile *.todo   setfiletype votl

let maplocalleader = '\'  " uncomment for compatibility with
                                " previous versions of VO
                                "
" Empty value to disable preview window altogether
let g:fzf_preview_window = ''

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'
