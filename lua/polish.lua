-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
vim.opt.tabstop = 4
vim.opt.scrolloff = 15
vim.o.clipboard = "unnamedplus"
vim.o.guifont = "FiraCode Nerd Font Med"
-- increase the scale factor for readabil
vim.g.neovide_scale_factor = 1.6

-- Remap Ctrl + N to toggle terminal mode (instead of Ctrl+\ && Ctrl+n)
vim.api.nvim_set_keymap("t", "<C-n>", "<C-\\><C-n>", { noremap = true, silent = true })

-- Remove Neotree from the commands and replace it with Oil
vim.api.nvim_create_autocmd({ "VimEnter" }, {
  pattern = { "*" },
  callback = function()
    local arg = vim.fn.argv()[1]
    if arg and vim.fn.isdirectory(arg) == 1 then vim.cmd("Oil " .. arg) end
  end,
})

-- Automatically set file type to markdown for .md and .MD files
vim.cmd [[
  augroup markdown
    autocmd!
    autocmd BufRead,BufNewFile *.md,*.MD set filetype=markdown
  augroup END
]]

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- clipboard fix (always paste last yanked)
map("x", "p", '"_dP', opts)
