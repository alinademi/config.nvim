if vim.g.neovide then
   -- Helper function for transparency formatting
   local alpha = function()
      return string.format("%x", math.floor(255 * (vim.g.neovide_transparency_point or 0.9)))
   end
   -------------------------------------------------------------
   -- Font stuff
   vim.g.gui_font_default_size = 19
   vim.g.gui_font_size = vim.g.gui_font_default_size
   vim.g.gui_font_face = "JetBrainsMono Nerd Font"

   RefreshGuiFont = function()
      vim.opt.guifont = string.format("%s:h%s", vim.g.gui_font_face, vim.g.gui_font_size)
   end

   ResizeGuiFont = function(delta)
      vim.g.gui_font_size = vim.g.gui_font_size + delta
      RefreshGuiFont()
   end

   ResetGuiFont = function()
      vim.g.gui_font_size = vim.g.gui_font_default_size
      RefreshGuiFont()
   end

   -- Call function on startup to set default value
   ResetGuiFont()

   -- Keymaps
   local opts = { noremap = true, silent = true }
   vim.keymap.set({ 'n', 'i' }, "<C-+>", function() ResizeGuiFont(1) end, opts)
   vim.keymap.set({ 'n', 'i' }, "<C-_>", function() ResizeGuiFont(-1) end, opts) -- Updated keymap
   vim.keymap.set({ 'n', 'i' }, "<C-BS>", function() ResetGuiFont() end, opts)
   -- End font stuff
   --------------------------------------------------------
   -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
   vim.g.neovide_transparency = 0.9
   vim.g.transparency = 1.0
   vim.g.neovide_background_color = "#23283B" .. alpha()
   vim.g.neovide_scale_factor = 1.1
   vim.opt.linespace = 5
   vim.g.neovide_confirm_quit = true
   vim.g.neovide_input_use_logo = 1            -- enable use of the logo (cmd) key
   vim.keymap.set('n', '<D-s>', ':w<CR>')      -- Save
   vim.keymap.set('v', '<D-c>', '"+y')         -- Copy
   vim.keymap.set('n', '<D-v>', '"+P')         -- Paste normal mode
   vim.keymap.set('v', '<D-v>', '"+P')         -- Paste visual mode
   vim.keymap.set('c', '<D-v>', '<C-R>+')      -- Paste command mode
   vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
   -- blinking cursor
   vim.cmd [[
      autocmd GUIEnter * set guicursor=a:blinkon0
      autocmd GUIEnter * set guicursor+=i:ver25-blinkon0
      autocmd GUIEnter * set guicursor+=r:hor20
      autocmd GUIEnter * set guicursor+=c:hor20
   ]]
end

-- Allow clipboard copy paste in neovim
vim.g.neovide_input_use_logo = 1
vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })
