require("plugins")

-- Line numbers
vim.o.number = true

-- Always on gutter (where error signs and marks are shown)
vim.o.signcolumn = "yes"

-- Ignores cases if the whole search string is lowercase
vim.o.ignorecase = true
vim.o.smartcase = true

-- Rooter will change the directory to the first parent that contains one of the following files
vim.g.rooter_patterns = {".git", "Makefile", "makefile", "package.json", "pom.xml", "cargo.toml", "setup.py", "CMakeLists.txt"}

-- Use ASCII symbols in airline (with some fonts the other ones look odd)
vim.g.airline_symbols_ascii = 1
