return {
  'ramhejazi/jsdoc.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    local jsdocNvim = require 'jsdoc_nvim'
    jsdocNvim.setup()
  end,
  init = function()
    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }

    map('n', '<leader>o', function()
      local jsdoc_nvim = require 'jsdoc_nvim'
      -- is the current context JavaScript?
      if jsdoc_nvim.is_context_javascript() then
        jsdoc_nvim.generate()
      else
        -- optionally run another doc generator
        -- require('neogen').generate()
      end
    end, opts)
  end,
}
