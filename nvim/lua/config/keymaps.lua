local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- directory navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", { noremap = true, silent = true})
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", { noremap = true, silent = true})

-- pane navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- window management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts)
keymap.set("n", "<leader>sh", ":split<CR>", opts)

-- indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- comments
vim.api.nvim_set_keymap("n", "<C-_", "gcc", { noremap = true })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = true })

-- searchbox
keymap.set('n', '<leader>s', ':SearchBoxIncSearch<CR>', { noremap = true, silent = true})
keymap.set('n', '<leader>rep', ':SearchBoxReplace<CR>', { noremap = true, silent = true})

-- hop
keymap.set('', 'f', ':HopWord<CR>', { noremap = true, silent = true})
