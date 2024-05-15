return {
  {
    "stevearc/conform.nvim",
    lazy = false,
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
}
