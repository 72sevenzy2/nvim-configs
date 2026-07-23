return {
    "nvim-treesitter/nvim-treesitter",
    version = "*",
    lazy = false,

    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "go",
                "lua",
                "json",
            },
            highlight = {
                enable = true,
            },
        })
    end,
}
