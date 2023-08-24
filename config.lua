-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- <<< My Cheat Sheet <<< --
-- <leader>bj change buffer
-- :vs create new vertical split
-- :mksession create session file
-- lvim -S xxx read session file
-- A insert at the end of a line
-- 1 ctrl \ : create a new terminal
-- 2 ctrl \ : create another terminal
-- 3 ctrl \ : etc...
-- gl : show lsp information
-- gd go to func defination
-- K : show func information
-- gcc : comment and uncomment

-- <<< My Config for Terminal <<< --
-- Font: MesloLGS Nerd Font Mono Regular

-- <<< On file explorer <<< --
-- You can press g + ? inside explorer (nvim-tree) to see its default key map.

-- <<< On Code Completion <<< --
-- Pycharm >> vs code(pylance) > vim(pyright)
-- So if you require strong completion, spend time waiting for pycharm's indexing, 
-- it worths every minute.

-- <<< My Config for vim-code-dark Colorscheme <<< --
-- /Users/xizhima/.local/share/lunarvim/site/pack/lazy/opt
-- Lvim will auto upgrade the colorscheme, so you need to
-- modify this repeatedly.
-- See more on notion

-- Autosave interval in milliseconds
vim.opt.updatetime = 300
-- Enable autosave
vim.cmd('autocmd TextChanged,TextChangedI * silent! write')
-- Enable terminal to source bash file
-- vim.cmd('set shell=/bin/bash')

lvim.CursorLine = true

-- Enable persistent undo
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand('~/.local/share/lunarvim/undodir')

-- Plugins
lvim.plugins = {

{"tomasiser/vim-code-dark"},  -- Colorscheme

{
'tzachar/local-highlight.nvim',  -- Highlight the cursor selected words
config = function()
require('local-highlight').setup()
end
},

{'stevearc/aerial.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
  },
},

}

lvim.transparent_window = false

-- A really good config that allows you to cancel the text showing
-- for lsp diagnostics, if you want to check, just move to that
-- line and type gl
vim.diagnostic.config({ virtual_text = false })

-- Colorscheme
lvim.colorscheme = "codedark"

-- Highlight the cursor selected words
require('local-highlight').setup({
    file_types = {'python', 'cpp'},
    hlgroup = 'Search',
    cw_hlgroup = nil,
})


