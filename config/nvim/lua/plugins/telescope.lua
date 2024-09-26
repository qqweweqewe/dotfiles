return {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
        telescope = require("telescope.builtin")
        vim.keymap.set('n', '<C-p>', telescope.find_files)
        vim.keymap.set('n', '<leader>g', telescope.live_grep)
      end
    }
