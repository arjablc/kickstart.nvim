local keymap = vim.keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "




--quick insert to normal mode switch
keymap.set('i', 'jk', '<ESC>', { desc = 'Insert to normal mode with jk' })

-- for the splits
keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
--nohighlight search
keymap.set({ 'n', 'v' }, '<Esc>', '<cmd>noh<CR>', { desc = 'no highlight after search' })

--split nav
keymap.set('n', "<leader>sh", "<cmd>sp<CR>", { desc = '[s]plit [h]orizontal' })
keymap.set('n', "<leader>sv", "<cmd>vsp<CR>", { desc = '[s]plit [v]ertical' })
--split size changes
keymap.set('n', "<leader>s=", "<C-w>=", { desc = "equalize the splits" })
keymap.set('n', "<leader>shi", "<cmd>res +5<CR>", { desc = "increase window vertically by 5" })
keymap.set('n', "<leader>shd", "<cmd>res -5<CR>", { desc = "decrease window vertically by 5" })
keymap.set('n', "<leader>svd", "<cmd>vert res -5<CR>", { desc = "decrease window horizontally by 5" })
keymap.set('n', "<leader>svi", "<cmd>vert res +5<CR>", { desc = "increase window horizontally by 5" })


--tab nav
keymap.set('n', "<leader>tt", "<cmd>tabnew<CR>", { desc = "new tab" })
keymap.set('n', "<leader>tp", "<cmd>tabp<CR>", { desc = "prev tab" })
keymap.set('n', "<leader>tn", "<cmd>tabn<CR>", { desc = "next tab" })
keymap.set('n', "<leader>to", "<cmd>tabo<CR>", { desc = "only this tab" })
keymap.set('n', "<leader>tc", "<cmd>tabc<CR>", { desc = "close this tab" })
keymap.set('n', "<leader>tcc", "<cmd>tabnew %<CR>", { desc = "current buffer in new tab" })

--closing buffers
keymap.set('n', "<leader>q", "<cmd>q<CR>", { desc = "exit current buffer" })
keymap.set('n', "<leader>xa", "<cmd>qa<CR>", { desc = "close all the tabs" })

--closing everyting with saving
keymap.set('n', "<leader>qq", "<cmd>wqa<CR>", { desc = "close everything" })
