local nvim_lsp = require('lspconfig')
local servers = { 'tsserver', 'cssls', 'graphql', 'emmet_ls', 'jsonls', 'rust_analyzer', 'dockerls', 'taplo',
	'theme_check', 'html', 'tailwindcss' }

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup {}
end
