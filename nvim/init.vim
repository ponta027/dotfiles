syntax on 

if has('vim_starting')
  set rtp+=~/.vim/plugged
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
  endif
endif

source ~/.vim/plugged/vim-plug/autoload/plug.vim

""""""""""""""""""""""""""""""
" 
""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug',{'dir': '~/.vim/plugged/vim-plug/autoload'}

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"" markdown preview
Plug 'previm/previm'
Plug 'tyru/open-browser.vim'
Plug 'aklt/plantuml-syntax'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'mattn/vim-maketable'

"" neosnippet
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" clang-format
Plug 'rhysd/vim-clang-format'
" go
Plug 'mattn/vim-goimports'
let g:goimports = 1
" Rust
Plug 'rust-lang/rust.vim'
let g:rustfmt_autosave = 1

" Util
Plug 'Shougo/unite-outline'
Plug 'Shougo/unite.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/calendar.vim'
Plug 'kamykn/popup-menu.nvim'
Plug 'mattn/webapi-vim'
Plug 'scrooloose/nerdtree'
Plug 'thinca/vim-quickrun'
Plug 'xavierchow/vim-swagger-preview'

" coc"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

"custom"
source ~/.config/nvim/custom_plugin.vim

call plug#end()

source ~/.config/nvim/setup.vim
source ~/.config/nvim/setup_plugin.vim
source ~/.config/nvim/setup_wsl.vim
source ~/.config/nvim/setup_custom.vim



