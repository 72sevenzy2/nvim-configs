vim.cmd("syntax on")
vim.opt.filetype = "on"

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

vim.opt.number = true
vim.opt.tabstop = 5
vim.opt.guicursor = "a:block-Cursor"

require("lazy").setup("plugins")
require("config.keymaps")

vim.diagnostic.config({
    virtual_text = true,
})

vim.cmd.colorscheme("moonfly")

vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
