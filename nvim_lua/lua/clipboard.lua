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


function toggle_paste_mode()
    if vim.o.paste then
        vim.cmd('set nopaste')
        print('nopaste mode enabled')
    else
        vim.cmd('set paste')
        print('paste mode enabled')
    end
end

vim.api.nvim_create_user_command("PastToggle", function()
  toggle_paste_mode()
end, { nargs = 0, force = true, desc = "Past Toggle"})



