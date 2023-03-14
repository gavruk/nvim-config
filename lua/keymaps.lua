local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>d", ":NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
vim.keymap.set("n", "<C-f>", ":b#<CR>", opts)
vim.keymap.set("n", "<leader><space>", ":noh<CR>", opts)

vim.keymap.set("i", "jj", "<ESC>", opts)

vim.keymap.set("n", "j", "gj", opts)
vim.keymap.set("n", "k", "gk", opts)

--Working with tabs
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", opts)
vim.keymap.set("n", "<leader>th", ":tabprev<CR>", opts)
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>", opts)
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", opts)
vim.keymap.set("n", "<leader>to", ":tabonly<CR>", opts)

--split windows
vim.keymap.set("n", "<leader>sh", ":leftabove vnew<CR>", opts)
vim.keymap.set("n", "<leader>sl", ":rightbelow vnew<CR>", opts)
vim.keymap.set("n", "<leader>sk", ":leftabove new<CR>", opts)
vim.keymap.set("n", "<leader>sj", ":rightbelow new<CR>", opts)

vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)


--Clean trailing whitespace
--vim.keymap.set("n", "<leader>cw", "mz:%s/\s\+$//<cr>:let @/=''<cr>`z", { noremap = true, silent = true })

--Select all
vim.keymap.set("n", "vaa", "ggvGg_", opts)
vim.keymap.set("n", "Vaa", "ggVG", opts)
