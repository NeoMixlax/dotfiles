-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
})

return require('packer').startup({
    function(use)
        ---------------------
        -- Package Manager --
        ---------------------

        use('wbthomason/packer.nvim')

        ---------------------
        --  Color Scheme   --
        ---------------------

        use({
            'EdenEast/nightfox.nvim',
            config = function()
                require('NeoMixlax.plugins.nightfox')
            end,
        })

        ---------------------
        --      Icons      --
        ---------------------

        use({
            'nvim-tree/nvim-web-devicons',
            config = function()
                require('NeoMixlax.plugins.nvim-tree')
            end,
        })

        ---------------------
        --   Navigation    --
        ---------------------

        use('nvim-tree/nvim-tree.lua')

        ---------------------
        -- LaTeX production--
        ---------------------

        use('lervag/vimtex')

        ---------------------
        --       LSP       --
        ---------------------

        use({
            'neovim/nvim-lspconfig',
            config = function()
                require('NeoMixlax.plugins.lspconfig')
            end,
        })

        ---------------------
        -- Auto-Completion --
        ---------------------

        use({
            'hrsh7th/nvim-cmp',
            config = function()
                require('NeoMixlax.plugins.nvim-cmp')
            end,
        })

        use('hrsh7th/cmp-nvim-lsp') -- LSP source for nvim-cmp
        
        ---------------------
        --    Snippets     --
        ---------------------

        use('L3MON4D3/LuaSnip')

        use('saadparwaiz1/cmp_luasnip') -- LSP source for nvim-cmp
    end,
})
