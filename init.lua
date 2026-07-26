local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
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

require("lazy").setup("plugins")
require("config.keymaps")

vim.diagnostic.config({
    virtual_text = true,
})
vim.api.nvim_set_hl(0, "Normal", { bg = "#1a1b26" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "#1a1b26" })

vim.cmd.colorscheme("moonfly")

vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
