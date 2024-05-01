
vim.api.nvim_set_keymap('n', '<leader>o', ':<C-u>Unite -vertical -winwidth=30 -no-quit outline<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>.', ':<C-u>edit $HOME/.config/nvim/init.lua<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>,', ':<C-u>source $HOME/.config/nvim/init.lua<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>h', ':cd %:h<CR>', {noremap = true})
vim.keymap.set('i', '<C-T><C-T>', '<C-R>=strftime("%H:%M:%S") <CR>', {silent = true, noremap = false})
vim.keymap.set('i', '<C-D><C-D>', '<C-R>=strftime("%Y-%m-%d") <CR>', {silent = true, noremap = false})
  

vim.api.nvim_set_keymap('i', '<C-k>', '<Plug>(neosnippet_expand_or_jump)', {})

local function get_path(mods)
  return vim.fn.fnamemodify(vim.fn.expand("%"), mods)
end

local function copy_to_clipboard(path)
  vim.fn.setreg("+", path)
  vim.api.nvim_echo({ { "Copied: " .. path } }, false, {})
end

vim.api.nvim_create_user_command("CopyAbsoluteFilePath", function()
  copy_to_clipboard(get_path(":p"))
end, { nargs = 0, force = true, desc = "Copy absolute file path to the clipboard" })

