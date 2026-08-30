return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    terminalColors = false,
    config = function()
      require("kanagawa").setup({
        theme = "wave",
        transparent = true,
      })
      vim.cmd("colorscheme kanagawa")
      vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#51afef", bg = "NONE" })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        theme = "kanagawa",
        globalstatus = true,
      },
    },
  },
}
