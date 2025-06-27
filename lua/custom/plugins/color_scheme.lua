return {
  -- {
  --   'bluz71/vim-moonfly-colors',
  --   name = 'moonfly',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.opt.termguicolors = true
  --     vim.cmd.colorscheme 'moonfly'
  --   end,
  -- },
  -- {
  --   'rose-pine/neovim',
  --   name = 'rose-pine',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.opt.termguicolors = true
  --     vim.cmd 'colorscheme rose-pine'
  --     -- Set the background color
  --     vim.api.nvim_set_hl(0, 'Normal', { bg = '#000000' })
  --     -- If you also want to ensure the background of floating windows/popups is black
  --     vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#000000' })
  --   end,
  -- },
  {
    'vague2k/vague.nvim',
    config = function()
      vim.opt.termguicolors = true
      vim.cmd 'colorscheme vague'
    end,
  },
}
