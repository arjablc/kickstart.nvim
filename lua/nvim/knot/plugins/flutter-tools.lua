return {

  'akinsho/flutter-tools.nvim',
  ft = "dart",
  dependencies = {
    'nvim-lua/plenary.nvim', 'stevearc/dressing.nvim'
  },
  config = function()
    require('flutter-tools').setup {}
    vim.keymap.set('n', '<leader>fl', require('telescope').extensions.flutter.commands, { desc = "flutter tools" }
    )
  end
}
