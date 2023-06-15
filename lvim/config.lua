-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- 使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true

vim.o.tabstop = 4
vim.opt.tabstop = 4
vim.bo.tabstop = 4
vim.o.shiftround = true
vim.o.smartindent = true
vim.opt.smartindent = true
vim.o.smarttab = true
vim.opt.smarttab = true

-- 不可见字符的显示，这里只把空格显示为一个点
vim.o.list = true
vim.o.listchars = 'space:·,tab:->'

lvim.plugins = {
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      vim.g.gitblame_enabled = 0
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require('symbols-outline').setup()
    end
  },
  {
    "p00f/nvim-ts-rainbow",
  },
  { "olexsmir/gopher.nvim" },
  { "leoluz/nvim-dap-go" },
  { "fedepujol/move.nvim" },
  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    dependencies = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },
}

lvim.builtin.treesitter.rainbow.enable = true
lvim.format_on_save = true

-- Normal-mode commands
lvim.keys.normal_mode["<M-j>"] = ":MoveLine(1)<CR>"
lvim.keys.normal_mode["<M-k>"] = ":MoveLine(-1)<CR>"

-- Visual-mode commands
local opts = { noremap = true, silent = true }
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
