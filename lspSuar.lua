return {
	"neovim/nvim-lspconfig",
	dependencies = { "hrsh7th/cmp-nvim-lsp" },
	config = function()
		local caps = require("cmp_nvim_lsp").default_capabilities()

		-- CONFIGURAZIONE DIAGNOSTIC E FLOATING PREVIEW
		vim.diagnostic.config({
			virtual_text     = true,
			severity_sort    = true,
			float            = {
				style  = 'minimal',
				border = 'rounded',
				source = 'if_many',
				header = '',
				prefix = '',
			},
			signs            = {
				text = {
					[vim.diagnostic.severity.ERROR] = '✘',
					[vim.diagnostic.severity.WARN]  = '▲',
					[vim.diagnostic.severity.HINT]  = '⚑',
					[vim.diagnostic.severity.INFO]  = '»',
				},
			},
			update_in_insert = true,
		})

		local orig = vim.lsp.util.open_floating_preview
		function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
			opts            = opts or {}
			opts.border     = opts.border or 'rounded'
			opts.max_width  = opts.max_width or 80
			opts.max_height = opts.max_height or 24
			opts.wrap       = opts.wrap ~= false
			return orig(contents, syntax, opts, ...)
		end

		-- AUTOCMD PER KEYMAP LSP E FORMATTAZIONE
		vim.api.nvim_create_autocmd('LspAttach', {
			group = vim.api.nvim_create_augroup('my.lsp', {}),
			callback = function(args)
				local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
				local buf    = args.buf
				local map    = function(mode, lhs, rhs) vim.keymap.set(mode, lhs, rhs, { buffer = buf }) end

				-- KEYMAP LSP
				map('n', 'K', vim.lsp.buf.hover)
				map('n', 'gd', vim.lsp.buf.definition)
				map('n', 'gD', vim.lsp.buf.declaration)
				map('n', 'gi', vim.lsp.buf.implementation)
				map('n', 'go', vim.lsp.buf.type_definition)
				map('n', 'gr', vim.lsp.buf.references)
				map('n', 'gs', vim.lsp.buf.signature_help)
				map('n', 'gl', vim.diagnostic.open_float)
				map('n', '<F2>', vim.lsp.buf.rename)
				map({ 'n', 'x' }, '<F3>', function() vim.lsp.buf.format({ async = true }) end)
				map('n', '<F4>', vim.lsp.buf.code_action)
			end,
		})

		-- CONFIGURAZIONE LSP PER OGNI LINGUAGGIO

		-- HTML
		vim.lsp.config['html'] = { capabilities = caps }

		-- CSS / SCSS / LESS
		vim.lsp.config['cssls'] = { capabilities = caps }

		-- JS / TS / TSX
		vim.lsp.config['ts_ls'] = {
			capabilities = caps,
			filetypes = {
				"javascript", "javascriptreact", "javascript.jsx",
				"typescript", "typescriptreact", "typescript.tsx",
			},
			root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
		}

		-- PHP
		vim.lsp.config['intelephense'] = { capabilities = caps }

		-- Python
		vim.lsp.config['pyright'] = { capabilities = caps }

		-- C / C++
		vim.lsp.config['clangd'] = { capabilities = caps }
	end
}
