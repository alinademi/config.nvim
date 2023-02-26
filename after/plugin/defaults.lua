-- we are using this file to modify the default settings of plugins
-- This is a good place to put our own custom keybindings

------------------------------
-- NetRW
------------------------------
vim.g.netrw_banner = 0 -- Hide banner
vim.g.netrw_browse_split = 4 -- Open in previous window
vim.g.netrw_alth = 1 -- Open with right splitting
vim.g.netrw_liststyle = 3 -- Tree-style view
vim.g.netrw_list_hide = (vim.fn["netrw_gitignore#Hide"]()) .. [[,\(^\|\s\s\)\zs\.\S\+]] -- use .gitignore

------------------------------
-- NeoTree
------------------------------
-- Rreveal NoeTree with ctrl+n
vim.api.nvim_set_keymap("n", "<C-n>", ":NeoTreeReveal<CR>", { noremap = true, silent = true })

-- reveals neo tree with focus on file tree every time we start neovim.
vim.api.nvim_create_augroup("neotree_autoopen", { clear = true })
vim.api.nvim_create_autocmd("BufWinEnter", {
   desc = "Open neo-tree on enter",
   group = "neotree_autoopen",
   callback = function()
      if not vim.g.neotree_opened then
         vim.cmd "Neotree reveal" -- for focus on the buffer instead, use "NeoTree show".
         vim.g.neotree_opened = true
      end
   end,
})

------------------------------
-- ToggleTerm
------------------------------
-- open terminal everytime we start neovim
vim.cmd [[
   autocmd VimEnter * ++nested :ToggleTerm
   autocmd BufWinLeave * ++nested :wincmd p | :ToggleTerm
]]
