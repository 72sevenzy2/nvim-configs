return {
    {
        "bluz71/vim-moonfly-colors",
        name = "moonfly",
        lazy = false,
        priority = 1000,
        config = function()
	    vim.opt.termguicolors = true
            vim.cmd.colorscheme("moonfly")
        end,
    },
}
