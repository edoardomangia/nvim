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

            --require('lspconfig').pyright.setup{
            --    on_attach = on_attach,  -- Attach function
            --}

            require('lspconfig').pylsp.setup{
                on_attach = on_attach,
            }  

    	    require('lspconfig').julials.setup{
                on_attach = on_attach,  -- Attach function
            }

            require('lspconfig').clangd.setup{
                on_attach = on_attach,  -- Attach function
            }

            require('lspconfig').rust_analyzer.setup{
                on_attach = on_attach,  -- Attach function
            }            
        end,
    },
}
