syn on


set runtimepath^=$HOME/.vim/

filetype plugin on

set clipboard+=unnamed
set expandtab
set fileencoding=utf-8 
set textwidth=0
set tw=0


"編集ファイル表示
set title
"行数、列数を表示
set ruler
"行数を表示
set number
"tabspace=4
set ts=4


"不可視文字の表示
set list
set listchars=eol:$,tab:>\


"---mac 用設定

vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
nmap <Space><C-v> :call setreg("\"",system("pbpaste"))<CR>p

"help
helptags ~/.vim/doc



""""""""""""""""""""""""""
" neocompiletecach
""""""""""""""""""""""""""
let g:neocomplcache_enable_at_startup = 1
"ユーザ定義の辞書を指定
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : '',
  \ 'scala' : $HOME . '/.vim/dict/scala.dict',
  \ }


""""""""""""""""""""""""""
" VimShell
""""""""""""""""""""""""""
let g:VimShell_EnableInteractive = 1



"------------------------------------------
" Zencoding 
"------------------------------------------
let g:user_zen_expandabbr_key = '<c-z>'

"-------------------------------------------
" calendar
"-------------------------------------------
let g:calendar_frame = 'default'
let g:calendar_google_calendar = 1


"===========================================
"VimShell
"===========================================
let g:VimShell_EnableInteractive = 1


"===========================================
" quickrun
"===========================================
let g:quickrun_config = {}
""""""""""""""""""
if has('win32')
let g:quickrun_config['rst']  = {'command': 'sphinx-build', 'hook/sphinx/enable': 1}


elsif has('mac')

let g:quickrun_config['rst'] = {
	\ 'command': 'sphinx-build', 
	\ 'cmdopt': '-b html -d _build/doctrees .  _build/html'
	\ }
endif





"==================================
"関数定義
"==================================
function! TortoiseUpdate()
   let path = expand("%:p:h")
   let cmd = '!C:\Progra~1\TortoiseSVN\bin\TortoiseProc.exe /command:update /path:'.path.' /notempfile /close'
   echo cmd
  silent execute(cmd)
endfunction
command! TUpdate :call TortoiseUpdate()


"==================================
" 今日のログ
"==================================
function! Openmemo()
  let logpath = 'C:\work\04_logging\'. strftime("%Y").'\'.strftime("%Y%m").'\'.strftime("%Y%m%d").".rst"
  silent execute( ':e '.logpath )
endfunction

autocmd FileType c set tags=XXXX
au BufRead,BufNewFile *.txt set syntax=hybrid
au BufRead,BufNewFile *.md set syntax=hybrid
au BufRead,BufNewFile *.html set syntax=hybrid



if 1 && filereadable($HOME . '/vimrc_abbr')
  source $HOME/vimrc_abbr
endif

if 1 && filereadable($HOME . '/gvimrc')
  source $HOME/gvimrc
endif



" 全角spaceをhighlight表示させる
augroup ZenkakuSpace
  autocmd!
  autocmd ColorScheme * highlight ZenkakuSpace term=underline ctermbg=Red guibg=Red
  " %u3000は全角spaceの文字code
  autocmd VimEnter,WinEnter * match ZenkakuSpace /\%u3000/
  autocmd VimEnter,WinEnter * match ZenkakuSpace /\%u8140/
augroup END



""""""""""""""""""""""""""
" 全角スペースの可視化
""""""""""""""""""""""""""
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme * call ZenkakuSpace()
    autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif

"""""""""""
" C-language"
map ,x <Plug>(operator-clang-format)$


