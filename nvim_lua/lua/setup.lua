
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.clipboard:append{'unnamedplus'}
vim.opt.cursorcolumn=true
vim.opt.cursorline=true
vim.opt.encoding="utf-8"
vim.opt.expandtab=true
vim.opt.fileencoding="utf-8"
vim.opt.fileencodings="utf-8,sjis,iso-2022-jp,euc-jp"
vim.opt.fileformat="unix"
vim.opt.list=true
vim.opt.listchars="eol:$,tab:>\\"
vim.opt.number=true
vim.opt.shiftwidth=2
vim.opt.synmaxcol=200
vim.opt.tabstop=2
vim.opt.textwidth=0


vim.cmd [[
try
  colorscheme slate
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]



-- TODO: convet lua script.
vim.api.nvim_exec([[
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
]],true)
-- require('my_lualine')
--
--
vim.g.coc_global_extensions = { 'coc-clangd', 'coc-pyright' }

