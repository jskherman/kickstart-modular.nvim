-- [[ NEOVIDE SETTINGS ]]
--
-- INFO: Check out the documentation at https://neovide.dev/configuration.html

if vim.g.neovide then
  vim.o.guifont = 'CaskaydiaMono Nerd Font Mono,Cascadia Code NF,Cascadia Code,Consolas,Segoe UI Emoji:h13'
  vim.g.neovide_cursor_animate_command_line = true
  vim.g.neovide_cursor_vfx_mode = 'railgun'
  vim.g.neovide_cursor_vfx_particle_density = 8.0
  vim.g.neovide_cursor_vfx_particle_lifetime = 1.4
  vim.g.neovide_cursor_vfx_particle_phase = 1.75
  vim.g.neovide_remember_window_size = true
  -- --  NOTE: Keymaps for copy and paste with neovide
  -- vim.keymap.set('n', '<C-s>', ':w<CR>') -- Save
  -- vim.keymap.set('v', '<C-c>', '"+y') -- Copy
  -- vim.keymap.set('n', '<C-v>', '"+P') -- Paste normal mode
  -- vim.keymap.set('v', '<C-v>', '"+P') -- Paste visual mode
  -- vim.keymap.set('c', '<C-v>', '<C-R>+') -- Paste command mode
  -- vim.keymap.set('i', '<C-v>', '<ESC>l"+Pli') -- Paste insert mode
  -- -- -- Allow clipboard copy paste in neovim
  -- vim.api.nvim_set_keymap('', '<C-v>', '+p<CR>', { noremap = true, silent = true })
  -- vim.api.nvim_set_keymap('!', '<C-v>', '<C-R>+', { noremap = true, silent = true })
  -- vim.api.nvim_set_keymap('t', '<C-v>', '<C-R>+', { noremap = true, silent = true })
  -- vim.api.nvim_set_keymap('v', '<C-v>', '<C-R>+', { noremap = true, silent = true })

  -- Increase/Decrease transparency
  vim.g.neovide_transparency = 1.0 -- 0.9
  vim.keymap.set('n', '<A-=>', function()
    if vim.g.neovide_transparency < 1 then
      vim.g.neovide_transparency = vim.g.neovide_transparency + 0.1
    else
      vim.g.neovide_transparency = 1
    end
  end)
  vim.keymap.set('n', '<A-->', function()
    if vim.g.neovide_transparency > 0.1 then
      vim.g.neovide_transparency = vim.g.neovide_transparency - 0.1
    else
      vim.g.neovide_transparency = 0.1
    end
  end)

  -- Increase/Decrease scale
  vim.g.neovide_scale_factor = 1.0
  local change_scale_factor = function(delta)
    if vim.g.neovide_scale_factor > 0.1 then
      vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + delta
    end
  end
  vim.keymap.set('n', '<C-=>', function()
    change_scale_factor(0.1)
  end)
  vim.keymap.set('n', '<C-->', function()
    change_scale_factor(-0.1)
  end)
end
