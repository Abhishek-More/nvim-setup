local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


--remap leader
vim.g.mapleader = " "

-- keybind list
map("", "<leader>c", '"+y')
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":wq<CR>")
map("n", "<Esc>", ":noh<CR>")
map("n", "!", ":!")

-- open terminals  
map("n", "<C-b>" , [[<Cmd> vnew term://bash<CR>]] , opt) -- split term vertically , over the right  
map("n", "<C-x>" , [[<Cmd> split term://bash | resize 10 <CR>]] , opt) -- split term vertically , over the right from scipy.optimize import fsolve 
