colorscheme slate
set clipboard+=unnamed
set cursorcolumn
set cursorline
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set fileencodings=utf-8,sjis,iso-2022-jp,euc-jp
set fileformat=unix
set list
set listchars=eol:$,tab:>\
set number
set shiftwidth=2
set synmaxcol=200
set tabstop=2
set textwidth=0
function! g:Date()
  return strftime("%x %H:%M")
endfunction
set statusline=%F%m%r%h%w\%=[TYPE=%Y][FORMAT=%{&ff}][ENC=%{&fileencoding}][ROW=%l/%L][COL=%c][%{g:Date()}][HEX=\%02.2B]


""
autocmd BufNewFile,BufFilePre,BufRead *.md  set filetype=markdown

""

let g:neosnippet#snippets_directory='~/.config/nvim/snippet'

""
nnoremap <Space>. :<C-u>edit $HOME/.config/nvim/init.vim<CR>
nnoremap <Space>, :<C-u>source $HOME/.config/nvim/init.vim<CR>
imap <silent> <C-T><C-T>  <C-R>=strftime("%H:%M:%S")<CR>
imap <silent> <C-D><C-D>  <C-R>=strftime("%Y-%m-%d")<CR>
imap <silent> <Space>outline :Unite outlint -vertical -no-quit -winwidth=30 <CR><CR>


"" show invsible char
augroup ZenkakuSpace
  autocmd!
  autocmd ColorScheme * highlight ZenkakuSpace term=underline ctermbg=Red guibg=Red
  autocmd VimEnter,WinEnter * match ZenkakuSpace /\%u3000/
  autocmd VimEnter,WinEnter * match ZenkakuSpace /\%u8140/
augroup END

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


""""""""""""""""""""""""""""""""""""""
"" terminal setup 
""""""""""""""""""""""""""""""""""""""
tnoremap <Esc> <C-\><C-n>
command! -nargs=* T split | wincmd j | resize 20 | terminal <args>

"" end

