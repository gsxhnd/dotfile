-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovice then
  vim.o.guifont = "JetBrainsMono Nerd Font:h14"
  vim.g.neovide_transparency = 0.95
  vim.g.neovide_window_blurred = true
end
