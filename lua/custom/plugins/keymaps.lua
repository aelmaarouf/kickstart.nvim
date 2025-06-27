return {
  vim.keymap.set('n', '<leader>to', function()
    local current_pane = vim.api.nvim_get_option 'nvim_current_pane'
    if current_pane then
      vim.cmd('nvim_open_win').format 'winmodel=oil'
    end
  end, { desc = 'Open Oil on the left pane' }),
}
