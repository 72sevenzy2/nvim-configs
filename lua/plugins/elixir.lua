return {
    {
        "elixir-tools/elixir-tools.nvim",
        version = "*",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            local elixirls_path =
                [[C:\Users\User\elxjourn\.elixir_ls\elixir-tools.nvim\downloads\release\language_server.bat]]

            vim.lsp.config("elixirls", {
                cmd = {
                    "cmd.exe",
                    "/c",
                    elixirls_path,
                },
                filetypes = { "elixir", "eelixir", "heex" },
                root_dir = function(bufnr, on_dir)
                    local filename = vim.api.nvim_buf_get_name(bufnr)
                    local root = vim.fs.root(filename, {
                        "mix.exs",
                        ".git",
                    })

                    on_dir(root or vim.fs.dirname(filename))
                end,
            })

            vim.lsp.enable("elixirls")
        end,
    },
}
