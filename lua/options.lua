require "nvchad.options"

vim.opt.relativenumber = true

-- save undo after file has been closed
vim.opt.undofile = true

-- case insensitive searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- decrease update time
vim.opt.updatetime = 250

-- highlight on yank
vim.highlight.on_yank()

-- scrolloff
vim.opt.scrolloff = 5

-- line ruler
vim.opt.colorcolumn = "90"

local o = vim.o

-- cursorline
o.cursorlineopt ='both'

-- Use win32yank.exe to link yank to Windows clipboard
vim.g.clipboard = {
  name = "win32yank-wsl",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
  cache_enabled = false,
}
