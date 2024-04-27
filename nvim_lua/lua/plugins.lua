-- # opt ディレクトリに packer.nvim をクローン
-- git clone https://github.com/wbthomason/packer.nvim  ~/.config/nvim/site/pack/packer/opt/packer.nvim
vim.cmd.packadd "packer.nvim"

require("packer").startup(function()
use 'airblade/vim-gitgutter'
use 'tpope/vim-fugitive'

--"" markdown preview
use 'previm/previm'
use 'tyru/open-browser.vim'
use 'aklt/plantuml-syntax'
use 'godlygeek/tabular'
use 'preservim/vim-markdown'
use 'mattn/vim-maketable'


--"" neosnippet
use 'Shougo/neocomplete.vim'
use 'Shougo/neosnippet.vim'
use 'Shougo/neosnippet-snippets'
vim.g['neosnippet#snippets_directory'] = '~/.config/nvim/snippet'

--" clang-format
use 'rhysd/vim-clang-format'
use 'vim-scripts/DoxygenToolkit.vim'

--" go
use 'mattn/vim-goimports'
--" Rust
use 'rust-lang/rust.vim'

-- " Util
use 'Shougo/unite-outline'

vim.g.unite_split_rule = 'botright'
use 'Shougo/unite.vim'
use 'ctrlpvim/ctrlp.vim'
use 'itchyny/calendar.vim'
use 'kamykn/popup-menu.nvim'
use 'mattn/webapi-vim'
use 'scrooloose/nerdtree'

use 'thinca/vim-quickrun'
use 'xavierchow/vim-swagger-preview'

--" coc"
use 'neoclide/coc.nvim'
use 'mfussenegger/nvim-dap'
use 'nvim-neotest/nvim-nio'
use 'rcarriga/nvim-dap-ui'
use 'w0rp/ale'
use 'itchyny/lightline.vim'
use 'maximbaz/lightline-ale'

vim.g.NERDTreeShowHidden=1
vim.g.goimports = 1
vim.g.rustfmt_autosave = 1

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

end)
