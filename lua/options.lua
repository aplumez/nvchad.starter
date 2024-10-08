require "nvchad.options"

vim.api.nvim_set_option("clipboard", "unnamedplus")

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "80"

vim.g["conjure#client#clojure#nrepl#connection#port_files"] = { ".shadow-cljs/nrepl.port", ".nrepl-port" }
vim.g["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = false

vim.g.html_indent_script1 = "inc"
vim.g.html_indent_style1 = "inc"

vim.g.loaded_node_provider = 1
vim.g.node_host_prog = io.popen("nvm which default"):read "*a"

vim.g.loaded_python3_provider = 1
vim.g.python3_host_prog = "/home/aplumez/.pyenv/versions/py3nvim/bin/python"
