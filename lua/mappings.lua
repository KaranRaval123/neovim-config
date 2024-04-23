require "nvchad.mappings"
local map = vim.keymap.set

map('i', 'jk', '<Esc>')
map('n', '<Esc>', '<cmd>nohlsearch<CR>')
map('n', '<leader>ci', 'ci(')
map('n', '<leader>E', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
map('n', '<leader>Q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
map('n', '<left>', '<nop>')
map('n', '<right>', '<nop>')
map('n', '<up>', '<nop>')
map('n', '<down>', '<nop>')
map('n', '<leader>Y', 'gg"+yG')
local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

return M
