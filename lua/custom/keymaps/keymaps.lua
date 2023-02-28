local opts = { noremap = true, silent = true }
local term_opts = { silent = true } -- for terminal
local keymap = vim.api.nvim_set_keymap -- Shortening function name

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-S-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-S-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-S-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-S-Right>", ":vertical resize +2<CR>", opts)

-- Move current line / block with Alt-j/k ala vscode.
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Navigate buffers
keymap("n", "<C-tab>", ":bnext<CR>", opts)
-- keymap("n", "<C-S-tab>", ":bprevious<CR>", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

------------------------------
-- NeoTree
------------------------------
-- -- Rreveal NoeTree with ctrl+n
-- vim.api.nvim_set_keymap("n", "<C-n>", ":NeoTreeShow<CR>", { noremap = true, silent = true })

-- -- reveals neo tree with focus on file tree every time we start neovim.
-- vim.api.nvim_create_augroup("neotree_autoopen", { clear = true })
-- vim.api.nvim_create_autocmd("BufWinEnter", {
--    desc = "Open neo-tree on enter",
--    group = "neotree_autoopen",
--    callback = function()
--       if not vim.g.neotree_opened then
--          vim.cmd "Neotree show" -- for focus on the buffer instead, use "NeoTree show".
--          vim.g.neotree_opened = true
--       end
--    end,
-- })

------------------------------
-- ToggleTerm
------------------------------
-- open terminal everytime we start neovim, caveat: it also focuses on the terminal
-- vim.cmd [[
--    autocmd VimEnter * ++nested :ToggleTerm  | wincmd
--    autocmd BufWinLeave * ++nested :wincmd p | :ToggleTerm
-- ]]
