return {
    {
        'hrsh7th/nvim-cmp',  -- Main completion plugin
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',  -- LSP source for nvim-cmp
            'hrsh7th/cmp-buffer',     -- Buffer source
            'hrsh7th/cmp-path',       -- Path source
            'hrsh7th/cmp-cmdline',    -- Command line source
            'saadparwaiz1/cmp_luasnip', -- Snippet source
            'L3MON4D3/LuaSnip',         -- Snippet engine
        },
        config = function()
            local cmp = require('cmp')

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)  -- For luasnip users
                    end,
                },
                mapping = {
                    ['<C-n>'] = cmp.mapping.select_next_item(),  -- Select the next item
                    ['<C-p>'] = cmp.mapping.select_prev_item(),  -- Select the previous item
                    ['<C-Space>'] = cmp.mapping.complete(),       -- Trigger completion
                    ['<C-e>'] = cmp.mapping.close(),              -- Close the completion menu
                    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirm selection
                },
                sources = {
                    { name = 'nvim_lsp' },   -- LSP source
                    { name = 'buffer' },      -- Buffer source
                    { name = 'path' },        -- Path source
                    { name = 'luasnip' },     -- Snippet source
                },
            })
        end,
    },
}
