syntax
set number
set shiftwidth=2
colorscheme darkblue


source ~/.config/nvim/command.vim

if has('vim_starting')
  set rtp+=~/.vim/plugged/vim-plug
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
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neovimhaskell/haskell-vim'
  Plug 'thinca/vim-quickrun'

  "" NERDTree
  Plug 'preservim/nerdtree'

  "" markdown preview
  Plug 'kazuph/previm', {'branch':'feature/add-plantuml-plugin'}
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

call plug#end()

"" markdown
autocmd BufRead,BufNewFile *.md  set filetype=markdown
nnoremap <silent> <C-p> :PrevimOpen<CR>
let g:vim_markdown_folding_disabled=1
let g:previm_enable_realtime=1





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
