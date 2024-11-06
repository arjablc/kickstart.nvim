return
--   "catppuccin/nvim",
--   name = "cattpuccin",
--   priority = 1000,
--
--   config = function()
--     require('catppuccin').setup({
--       flavour = "mocha",
--       transparent_background = false,
--       styles = {
--         commnets = { "italic" },
--       },
--       integrations = {
--         treesitter = true, }
--
--     })
--     vim.cmd.colorscheme 'catppuccin'
--   end
-- },

{
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'gruvbox'
  end,
  opts = ...
}
