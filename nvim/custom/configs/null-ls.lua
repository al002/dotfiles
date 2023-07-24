local present, null_ls = pcall(require, "null-ls")

local format = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {

  -- webdev stuff
  -- format.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  format.prettier,

  -- Lua
  format.stylua,

  -- Shell
  format.shfmt,
  lint.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- cpp
  format.clang_format,

  -- rust
  format.rustfmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
