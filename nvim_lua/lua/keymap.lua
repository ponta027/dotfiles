
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>o', ':<C-u>Unite -vertical -winwidth=30 -no-quit outline<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>.', ':<C-u>edit $HOME/.config/nvim/init.lua<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>,', ':<C-u>source $HOME/.config/nvim/init.lua<CR>', {noremap = true})
vim.keymap.set('i', '<C-T><C-T>', '<C-R>=strftime("%H:%M:%S") <CR>', {silent = true, noremap = false})
vim.keymap.set('i', '<C-D><C-D>', '<C-R>=strftime("%Y-%m-%d") <CR>', {silent = true, noremap = false})
  

vim.api.nvim_set_keymap('i', '<C-k>', '<Plug>(neosnippet_expand_or_jump)', {})



