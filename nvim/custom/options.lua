local opt = vim.opt

opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.foldlevel = 99
opt.grepprg = 'rg --vimgrep --smart-case --follow'
opt.grepformat = '%f:%l:%c:%m,%f:%l:%m'
