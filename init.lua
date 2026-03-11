-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { 'dracula/vim', name = 'dracula' },
})

-- Colors
vim.opt.termguicolors = true
vim.o.background = 'dark'
vim.cmd('colorscheme dracula')

-- General settings
vim.o.autoindent     = true
vim.o.autowrite      = true
vim.o.backup         = false
vim.o.cursorline     = true
vim.o.expandtab      = true
vim.o.foldenable     = false
vim.o.hidden         = true
vim.o.hlsearch       = true
vim.o.incsearch      = true
vim.o.laststatus     = 2
vim.o.mouse          = ''
vim.o.number         = true
vim.o.relativenumber = true
vim.o.ruler          = true
vim.o.shiftwidth     = 4
vim.o.showcmd        = true
vim.o.showmatch      = true
vim.o.showmode       = true
vim.o.smartcase      = true
vim.o.softtabstop    = 4
vim.o.swapfile       = false
vim.o.tabstop        = 4
vim.o.wildmenu       = true
vim.o.wrap           = false
vim.o.writebackup    = false

vim.opt.listchars = { tab = '▸ ', eol = '¬', trail = '.' }
vim.opt.wildignore:append({ '**/node_modules/**', '*.pyc', '*.swp', '*DS_Store*' })

-- Clear search highlight on Enter
vim.keymap.set('n', '<CR>', ':noh<CR><CR>', { noremap = true, silent = true })
