local nvim_lsp = require('lspconfig')
local rust_tools = require('rust-tools')

-- Configure rust-analyzer with rust-tools.nvim
rust_tools.setup({
    server = {
        on_attach = function(_, bufnr)
            -- Keybindings for LSP
            local opts = { noremap = true, silent = true, buffer = bufnr }
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        end,
        settings = {
            ['rust-analyzer'] = {
                cargo = { allFeatures = true },
                checkOnSave = {
                    command = 'clippy',
                },
            },
        },
    },
})

