return {
    {
        "nvim-treesitter/nvim-treesitter",
        version = "*",
        lazy = false,
        build = ":TSUpdate",

        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "go",
                    "lua",
                    "json",
                    "elixir",
                    "heex",
                    "eex",
                },
                highlight = {
                    enable = true,
                },
            })
        end,
    },
}

