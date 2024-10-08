return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false

    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }

    -- Move to previous/next
    map('n', '“', '<cmd>BufferPrevious<CR>', opts)
    map('n', '‘', '<cmd>BufferNext<CR>', opts)
    -- Re-order to previous/next
    map('n', '”', '<cmd>BufferMovePrevious<CR>', opts)
    map('n', '’', '<cmd>BufferMoveNext<CR>', opts)
    -- Close current tab
    map('n', '', '<cmd>BufferClose<CR>', opts)
  end,
  opts = {
    animation = true,
    insert_at_start = false,
  },
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
