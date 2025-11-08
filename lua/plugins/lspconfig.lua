return {
    {
        'neovim/nvim-lspconfig',  -- Main LSP configuration plugin
        config = function()
            -- Function to set up the language server
            local on_attach = function(client, bufnr)
                -- Key mappings for LSP functions
                local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
                local opts = { noremap=true, silent=true }

                -- LSP key mappings
                buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
                buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
                buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
                buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
                buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
                buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
                buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
                buf_set_keymap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
                buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
                buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)

                -- Enable formatting capabilities
                if client.server_capabilities.documentFormattingProvider then
                    buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.format()<CR>', opts)  -- Use vim.lsp.buf.format()
                end
            end



            vim.lsp.config("pylsp", {
                on_attach = on_attach,
            })
            vim.lsp.enable("pylsp")

            vim.lsp.config("julials", {
                on_attach = on_attach,
            })
            vim.lsp.enable("julials")

            vim.lsp.config("clangd", {
                on_attach = on_attach,
            })
            vim.lsp.enable("clangd")

            vim.lsp.config("rust_analyzer", {
                on_attach = on_attach,
            })
            vim.lsp.enable("rust_analyzer")

        end,
    },
}
