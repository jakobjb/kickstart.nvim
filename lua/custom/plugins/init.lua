-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- ~/.config/nvim/lua/plugins/colorscheme.lua

  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000, -- load before others
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha', -- latte, frappe, macchiato, mocha
      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { 'undercurl' },
            hints = { 'undercurl' },
            warnings = { 'undercurl' },
            information = { 'undercurl' },
          },
        },
        telescope = true,
        which_key = true,
        -- enable integrations as you like
      },
    }

    vim.cmd.colorscheme 'catppuccin'
  end,
}
