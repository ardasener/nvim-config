-- Automatically installs packer (plugin manager)
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end


return require('packer').startup(function()

  -- Packer can manage itself (impressive)
  use 'wbthomason/packer.nvim'

  -- Additional text objects
  use 'wellle/targets.vim'

  -- Shows register contents when " in normal or CTRL+r in insert is pressed
  use 'junegunn/vim-peekaboo'

  -- Comment stuff with gc<move>
  use 'tpope/vim-commentary'

  -- Allows repeating actions of plugins with .
  use 'tpope/vim-repeat'

  -- Automatically switch to project root
  use 'airblade/vim-rooter'

  -- Fuzzy Finder, File browser etc. (basically like Helm from emacs)
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorscheme
  use 'srcery-colors/srcery-vim'

  -- Statusline
  use 'vim-airline/vim-airline'

  -- 2 character searches with the s key (use ; and , to move)
  use 'justinmk/vim-sneak'

  -- Automatically set up your configuration after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end
end)
