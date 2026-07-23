print("keymaps loaded!")

vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("n", "<leader>Q", ":q!<CR>")
keymap.set("n", "<leader>x", ":wq<CR>")
keymap.set("n", "<Esc>", "<cmd>noh<CR><Esc>")
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
keymap.set("i", "jj", "<Esc>")
keymap.set("n", "<leader>e", vim.diagnostic.open_float)

keymap.set("n", "j", "k")
keymap.set("n", "k", "j")

keymap.set("n", "e", "w")
keymap.set("n", "q", "b")


keymap.set("v", "j", "k")
keymap.set("v", "k", "j")

keymap.set("v", "e", "w")
keymap.set("v", "q", "b")

keymap.set("n", "r", "e")

keymap.set("n", "<leader>n", ":Neotree toggle<CR>")

keymap.set("n", "<leader>h", vim.lsp.buf.hover, { desc = "Hover" })

keymap.set("n", "<Tab>", ":bnext<CR>")
keymap.set("n", "<S-Tab>", ":bprevious<CR>")

keymap.set("n", "w", "h")
keymap.set("n", "r", "l")

keymap.set("n", "l", "<CR>")
