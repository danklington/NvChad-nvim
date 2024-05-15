return {
  { -- undotree // generates a list of changes that can be reverted to
    'mbbill/undotree',
    lazy = false,
    vim.keymap.set("n", "<leader><F5>", "<cmd>UndotreeToggle<CR>")
  }
}
