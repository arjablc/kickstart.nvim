return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      window = {
        fuzzy_finder_mappings = {
          ['<C-j'] = 'move_cursor_down',
          ['<C-k'] = 'move_cursor_up',
        },
      },
    }

    local keymap = vim.keymap -- for conciseness

    keymap.set('n', '<leader>ee', '<cmd>Neotree show filesystem left toggle<CR>', { desc = 'Toggle file explorer' }) -- toggle file explorer
    keymap.set('n', '<leader>ef', '<cmd>Neotree focus reveal <CR>', { desc = 'Toggle file explorer on current file' }) -- toggle file explorer on current file
    keymap.set('n', '<leader>eg', '<cmd>Neotree show git_status toggle<CR>', { desc = 'show git status' })
  end,
}