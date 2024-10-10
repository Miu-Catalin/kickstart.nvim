-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

local function copy()
  if vim.v.event.operator == 'y' and vim.v.event.regname == '' then
    require('osc52').copy_register '"'
  end
end

vim.api.nvim_create_autocmd('TextYankPost', { callback = copy })

return {
  'farmergreg/vim-lastplace',
  {
    'ojroques/nvim-osc52',
    config = function()
      require('osc52').setup {}
    end,
  },
}
