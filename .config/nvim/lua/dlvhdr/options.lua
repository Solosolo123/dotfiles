vim.cmd("let loaded_matchparen = 1")

local function list(value, str, sep)
  sep = sep or ","
  str = str or ""
  value = type(value) == "table" and table.concat(value, sep) or value
  return str ~= "" and table.concat({ value, str }, sep) or value
end

vim.opt.helpheight = 30
vim.opt.fillchars = {
  horiz = "─",
  horizup = "⏊",
  horizdown = "┳",
  vert = "🭵", -- "│",
  vertleft = " ", -- "┤",
  vertright = "┣",
  verthoriz = "╋",
  diff = "╱",
  eob = " ",
  foldclose = "",
  foldopen = "",
  fold = " ",
  foldsep = " ",
  msgsep = "─",
}
vim.opt.conceallevel = 1
vim.opt.showmode = false
vim.opt.laststatus = 3
vim.opt.mouse = "a"
vim.opt.hidden = true
vim.opt.wildignore = vim.opt.wildignore + { "**/coverage/*", "**/node_modules/*", "**/.git/*" }
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.virtualedit = list({ "block" })
vim.opt.sidescrolloff = 8
vim.opt.clipboard = "unnamedplus"
vim.opt.shell = "fish"
vim.opt.enc = "utf-8"
vim.opt.background = "dark"
vim.opt.showtabline = 0
vim.opt.tabstop = 2
vim.opt.softtabstop = -1
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
-- vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.belloff = "all"
vim.opt.cursorline = true
vim.opt.updatetime = 50

vim.o.foldcolumn = "auto"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = vim.treesitter.foldexpr
-- vim.opt.foldnestmax = 1 -- maximum fold depth

vim.opt.showmatch = true
-- vim.opt.lazyredraw = true
vim.opt.undolevels = 10000
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.autoindent = true
vim.opt.cindent = true
vim.opt.signcolumn = "yes"
vim.opt.timeoutlen = 1000
vim.opt.pumheight = 10
vim.opt.pumwidth = 20
vim.opt.cmdheight = 0
-- vim.opt.pumblend = 3
vim.opt.sessionoptions = "blank,buffers,curdir,folds,tabpages,winsize,winpos,terminal"
-- vim.opt.diffopt:append("vertical") -- Show diffs in vertical splits
-- vim.opt.diffopt:append("foldcolumn:0") -- Show diffs in vertical splits
-- vim.opt.diffopt:append("indent-heuristic")
vim.opt.diffopt = list({
  "algorithm:histogram",
  "internal",
  "indent-heuristic",
  "filler",
  "closeoff",
  "iwhite",
  "vertical",
})
vim.opt.splitright = false
vim.opt.splitbelow = true
vim.opt.showmatch = false
-- vim.opt.shortmess = "at"
vim.opt.formatoptions = vim.opt.formatoptions
  - "a" -- Auto formatting is BAD.
  - "t" -- Don't auto format my code. I got linters for that.
  + "c" -- In general, I like it when comments respect textwidth
  + "q" -- Allow formatting comments w/ gq
  - "o" -- O and o, don't continue comments
  + "r" -- But do continue when pressing enter.
  + "n" -- Indent past the formatlistpat, not underneath it.
  + "j" -- Auto-remove comments if possible.
  - "2" -- I'm not in gradeschool anymore
if vim.fn.executable("rg") then
  -- if ripgrep installed, use that as a grepper
  vim.opt.grepprg = "rg --vimgrep --no-heading"
  vim.opt.grepformat = "%f:%l:%c:%m,%f:%l:%m"
end

vim.g.editorconfig = false
