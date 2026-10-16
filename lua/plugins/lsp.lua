return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        vim.lsp.config("gopls", {
            capabilities = capabilities,
        })
        vim.lsp.enable("gopls")

        vim.lsp.config("vtsls", {
            capabilities = capabilities,
        })
        vim.lsp.enable("vtsls")

        vim.api.nvim_create_user_command("LspInfo", function()
            vim.print(vim.lsp.get_clients({ bufnr = 0 }))
        end, {})

        vim.api.nvim_create_user_command("LspStop", function(opts)
            local clients = vim.lsp.get_clients({ name = opts.args })
            for _, client in ipairs(clients) do
                client:stop()
            end
        end, { nargs = 1 })
    end,
}
