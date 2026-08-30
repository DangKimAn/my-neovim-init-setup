
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  -- Dùng Esc để thoát chế độ gõ trong terminal
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  
  -- Dùng Ctrl + h/j/k/l để di chuyển giữa các cửa sổ
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- Tự động gán các phím này mỗi khi có một terminal được mở lên
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = 15, -- Chiều cao của terminal (số dòng)
      open_mapping = [[<c-\>]], -- Phím tắt để bật/tắt (Ctrl + \)
      direction = "horizontal", -- Hiển thị ở dưới cùng (giống VS Code)
      shade_terminals = true,
      start_in_insert = true,
      insert_mappings = true, 
      terminal_mappings = true,
      persist_size = true,
      close_on_exit = true ,-- Tự động đóng khi gõ lệnh 'exit'

-- ĐOẠN CODE THÊM MỚI ĐỂ FIX LAYOUT
      on_open = function(term)
        -- Quét tất cả các cửa sổ đang hiển thị
        for _, win in ipairs(vim.api.nvim_list_wins()) do
          local buf = vim.api.nvim_win_get_buf(win)
          -- Nếu phát hiện cửa sổ đó là neo-tree
          if vim.bo[buf].filetype == "neo-tree" then
            -- Ép neo-tree nhảy sang tận cùng bên trái và chiếm full chiều cao (wincmd H)
            vim.api.nvim_win_call(win, function()
              vim.cmd("wincmd H")
            end)
          end
        end
      end,
      -- KẾT THÚC ĐOẠN THÊM MỚI
    },
   keys = {
      { "<c-\\>", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
    },
  }
}

