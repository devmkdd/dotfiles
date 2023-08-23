
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)

				-- see :help lsp-zero-keybindings
				-- -- to learn the available actions
				lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

require'lspconfig'.cssmodules_ls.setup {
    on_attach = function (client)
        -- avoid accepting `definitionProvider` responses from this LSP
        client.server_capabilities.definitionProvider = false
        custom_on_attach(client)
    end,
}

lsp.setup()


require('lsp-progress').setup()
