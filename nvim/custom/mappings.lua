local M = {}

M.disabled = {
	t = {
		["<c-x>"] = "",
	},
}

M.general = {
	n = {
		["<leader>fm"] = {
			function()
				require("conform").format()
			end,
			"formatting",
		},
		["<leader>dc"] = {
			function()
				require("dap").continue()
			end,
      "dap continue"
		},
		["<leader>db"] = {
			function()
				require("dap").toggle_breakpoint()
			end,
			"toggle breakpoint",
		},
		["<leader>du"] = {
			function()
				require("dapui").toggle({ reset = true })
			end,
			"toggle dap ui",
		},
		["<leader>df"] = {
			function()
				require("dapui").float_element(nil, { enter = true })
			end,
			"Float dap element",
		},
		["<a-j>"] = {
			":ToggleTerm direction=float<CR>",
			"toggle terminal",
		},
	},
	v = {
		[">"] = { ">gv", "indent" },
	},
	t = {
		["<a-j>"] = {
			"<cmd>ToggleTerm<CR>",
			"toggle terminal",
		},
	},
}

return M
