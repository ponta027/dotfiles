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
