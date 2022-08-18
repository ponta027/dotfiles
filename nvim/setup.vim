""""
""""

set number
set shiftwidth=2
set cursorline
set cursorcolumn
colorscheme slate


"" show invsible char
set list
set listchars=eol:$,tab:>\

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



