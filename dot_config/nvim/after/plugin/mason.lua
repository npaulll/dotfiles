local on_attach = function(_, bufnr)
    local bufopts = {
        noremap = true,
        silent = true,
        buffer = bufnr,
    }
    vim.keymap.set('n', '<leader><leader>f', vim.lsp.buf.format, bufopts)
    vim.keymap.set('n', '<leader><leader>c', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', '<leader><leader>r', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<leader><leader>h', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<leader><leader>d', vim.lsp.buf.definition, bufopts)
end

require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").ccls.setup {
    on_attach = on_attach,
}
require("lspconfig").html.setup {
    on_attach = on_attach,
}
require("lspconfig").cssls.setup {
    on_attach = on_attach,
}
require("lspconfig").pylsp.setup {
    on_attach = on_attach,
    settings = {
        pylsp = {
            plugins = {
                yapf = {
                    enabled = true,
                }
            }
        }
    }
}
require("lspconfig").lua_ls.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}
require("rust-tools").setup({
    server = {
        cmd = { "rustup", "run", "stable", "rust-analyzer" },
        on_attach = on_attach,
    }
})
