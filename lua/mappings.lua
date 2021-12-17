-- Utilty Functions

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

-- Switch windows with CTRL + arrow (or hjkl) normal mode
nmap("<C-J>", "<C-W>j")
nmap("<C-K>", "<C-W>k")
nmap("<C-L>", "<C-W>l")
nmap("<C-H>", "<C-W>h")
nmap("<C-Down>", "<C-W>j")
nmap("<C-Up>", "<C-W>k")
nmap("<C-Right>", "<C-W>l")
nmap("<C-Left>", "<C-W>h")

-- Switch windows with CTRL + arrow (or hjkl) terminal mode
tmap("<C-J>", "<C-W>j")
tmap("<C-K>", "<C-W>k")
tmap("<C-L>", "<C-W>l")
tmap("<C-H>", "<C-W>h")
tmap("<C-Down>", "<C-W>j")
tmap("<C-Up>", "<C-W>k")
tmap("<C-Right>", "<C-W>l")
tmap("<C-Left>", "<C-W>h")
