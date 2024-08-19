require("catppuccin").setup({
	flavour = "mocha",
	integrations = {
	cmp = true,
	gitsigns = true,
	nvimtree = true,
	treesitter = true,
	barbar = false,
	dashboard = true
	},
	background = {dark = 'mocha'},
	styles = {
		comments = {"italic"}	
	}
})
vim.cmd.colorscheme "catppuccin"
