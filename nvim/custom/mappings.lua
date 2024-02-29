local M = {}

M.disabled = {
  t = {
    ["<C-x>"] = "",
    ["<C-j>"] = "",
    ["<C-h>"] = "",
    ["<S-tab>"] = "",
    ["<TAB>"] = "",
    ["<leader>fm"] = ""
  },
}

M.general = {
  n = {
    ["<leader>fm"] = {
      function()
        vim.lsp.buf.format({ sync = true })
      end,
      "LSP Formatting"
    },
    ["<leader>dc"] = {
      function()
        require("dap").continue()
      end,
      "dap continue",
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
    ["<C-j>"] = {
      ":ToggleTerm direction=float<CR>",
      "toggle terminal",
    },
    ["<C-h>"] = {
      ":ToggleTerm direction=horizontal<CR>",
      "toggle terminal",
    },

    ["<leader>bp"] = { "<cmd>BufferLinePick<CR>", "Pick buffer" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<CR>", "Close a buffer" },
    ["<leader>bh"] = { "<cmd>BufferLineCloseLeft<CR>", "Close all buffer on the left" },
    ["<leader>bl"] = { "<cmd>BufferLineCloseRight<CR>", "Close all buffer on the right" },
    ["<tab>"] = { "<cmd>BufferLineCycleNext<CR>", "Next buffer" },
    ["<s-tab>"] = { "<cmd>BufferLineCyclePrev<CR>", "Prev buffer" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
  t = {
    ["<c-j>"] = {
      "<cmd>ToggleTerm<CR>",
      "toggle terminal",
    },
    ["<c-h>"] = {
      "<cmd>ToggleTerm<CR>",
      "toggle terminal",
    },
  },
}

return M
