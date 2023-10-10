local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local lazy = require 'lazy'

local opts = {
   install = {
    colorscheme = { "nightfox" }
  },
  checked = {
    enable = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  } 
}

lazy.setup({ 
  { import = "cvim.plugins" },
  { import = "cvim.plugins.lsp" }
}, opts)
