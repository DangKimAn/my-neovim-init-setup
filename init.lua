-- Load các cấu hình cơ bản trước
require("config.options")
require("config.keymaps")

-- Bootstrap lazy.nvim (giữ nguyên đoạn code clone lazy của bạn)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Lazy sẽ TỰ ĐỘNG quét thư mục lua/plugins/ và load mọi file trong đó
require("lazy").setup("plugins")
