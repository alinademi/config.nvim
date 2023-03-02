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

keymap("n", "<leader>lx", ":Lexplore 20<cr>", opts)
-- :vx to :Vexplore
-- :Lexplore or :Lex to :lx
keymap("n", ":vx", ":Vexplore<CR>", opts)
keymap("n", ":lx", ":Lexplore 20<CR>", opts)

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

-- Telescope --
-- telescope_file_browser
keymap("n", "<leader>fb", ":Telescope file_browser<CR>", opts)
-- open file_browser with the path of the current buffer
keymap("n", "<leader>fp", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", opts)
