-- Leader key = space
vim.g.mapleader = " "

-- Project view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move lines and keep cursor position
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Paste without yanking
vim.keymap.set("x", "<leader>p", '"_dP')

-- copy to clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- delete without yanking
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- LSP formatting
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- format range
vim.keymap.set("v", "<leader>f", function()
    vim.lsp.buf.range_format()
end)

-- nvim-tree toggle
vim.keymap.set("n", "<leader>tr", vim.cmd.NvimTreeToggle)

-- find and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

local terminal = require("toggleterm.terminal").Terminal
local horizontal_poweshell = terminal:new({ cmd = "powershell", hidden = true, direction = "horizontal", size = 10 })

function _G.toggle_horizontal_poweshell()
    horizontal_poweshell:toggle()
end

-- Open new vertical terminal window
vim.keymap.set("n", "<leader>tv", function()
    vim.cmd("ToggleTerm direction=vertical size=40")
end)

-- Open new horizontal terminal window
vim.keymap.set("n", "<leader>th", "<cmd>lua toggle_horizontal_poweshell()<CR>")

local opts = { buffer = 0 }
vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
