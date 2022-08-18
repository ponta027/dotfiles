syntax on 


source ~/.config/nvim/setup.vim
source ~/.config/nvim/command.vim
source ~/.vim/autoload/plug.vim


if has('vim_starting')
  set rtp+=~/.vim/plugged
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
  end
endif

""""""""""""""""""""""""""""""
" 
""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
  Plug 'junegunn/vim-plug',{'dir': '~/.vim/plugged/vim-plug/autoload'}
  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'neovimhaskell/haskell-vim'
  Plug 'thinca/vim-quickrun'

  "" NERDTree
  Plug 'preservim/nerdtree'

  "" markdown preview
  Plug 'previm/previm'
  Plug 'tyru/open-browser.vim'
  Plug 'aklt/plantuml-syntax'
  
  "" neosnippet
  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'


  " clang-format
  Plug 'rhysd/vim-clang-format'
  Plug 'kana/vim-operator-user'

  " git
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'

  Plug 'Shougo/unite.vim'
  Plug 'Shougo/unite-outline'

  " go
  "
  Plug 'mattn/vim-goimports'
  let g:goimports = 1

"LSP"
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" Rust
Plug 'rust-lang/rust.vim'


call plug#end()

"" markdown
"autocmd BufRead,BufNewFile *.md  set filetype=markdown
"nnoremap <silent> <C-p> :PrevimOpen<CR>
"let g:vim_markdown_folding_disabled=1
"let g:previm_enable_realtime=1

let g:neosnippet#snippets_directory='~/.config/nvim/my_snippet'

" SuperTab like snippets behavior.
imap  <expr><TAB>
    \ pumvisible() ? "\<C-n>" :
    \ neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

if has('conceal')
  set conceallevel=2 concealcursor=i
endif


"""""""""""""""""""""""""
" Rust
" """""""""""""""""""""""
let g:rustfmt_autosave = 1
let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/vim-lsp.log')
" for asyncomplete.vim log
let g:asyncomplete_log_file = expand('~/asyncomplete.log')
set hidden

" settings for languages
let g:LanguageClient_serverCommands = {
            \ 'cpp': ['clangd'],
            \ }

"            \ 'rust': ['rustup', 'run', 'nightly', 'rust-analyzer'],

augroup LanguageClient_config
    autocmd!
    autocmd User LanguageClientStarted setlocal signcolumn=yes
    autocmd User LanguageClientStopped setlocal signcolumn=auto
augroup END

let g:LanguageClient_autoStart = 1
nnoremap <silent> <Space>lh :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <Space>ld :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <Space>lr :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> <Space>lf :call LanguageClient_textDocument_formatting()<CR>


