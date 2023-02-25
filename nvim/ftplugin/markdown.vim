autocmd BufRead,BufNewFile *.md  set filetype=markdown
"nnoremap <silent> <C-p> :PrevimOpen<CR>


"previm
if system ('uname -a | grep microsoft') !=  ''
  let g:previm_wsl_mode = 1
endif
let g:previm_enable_realtime=1
let g:previm_disable_default_css=1
let g:previm_custom_css_path='~/.config/nvim/markdown.css'
"let g:previm_plantuml_imageprefix = 'http://localhost:58080/png/'

" markdown
let g:vim_markdown_folding_disabled=1


