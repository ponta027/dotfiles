""""""""""""""""""""""""""""""""""
" 1. neosnippeet
" 2. coc
" 3. ale
" 4. lightline
""""""""""""""""""""""""""""""""""
" start neosnippet  configuration
let g:neosnippet#snippets_directory='~/.config/nvim/snippet'
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

let g:coc_global_extensions = [
    \'coc-clangd',
    \'coc-pyright'
    \]

let g:lightline = {}
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok'
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left'
      \ }
let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok'  ]]  }
let g:ale_linters = {}
let g:ale_linters.markdown = ['textlint']
let g:ale_completion_enabled = 1

let g:NERDTreeShowHidden=0
