require "nvchad.options"

vim.opt.relativenumber = true

-- save undo after file has been closed
vim.opt.undofile = true

-- case insensitive searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- decrease update time
vim.opt.updatetime = 250

-- scrolloff
vim.opt.scrolloff = 5

-- line ruler
vim.opt.colorcolumn = "80"

-- cursorline
vim.opt.cursorlineopt ='both'

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

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
