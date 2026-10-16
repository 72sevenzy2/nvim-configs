return {
    {
        "elixir-tools/elixir-tools.nvim",
        version = "*",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            local elixirls = require("elixir.elixirls")

            require("elixir").setup({
                nextls = {
                    enable = false,
                },
                elixirls = {
                    enable = true,
                    cmd = {
                        [[C:\Users\User\elxjourn\.elixir_ls\elixir-tools.nvim\downloads\release\language_server.bat]],
                    },
                    settings = elixirls.settings({
                        dialyzerEnabled = false,
                        fetchDeps = false,
                    }),
                },
                projectionist = {
                    enable = true,
                },
            })
        end,
    },
}

