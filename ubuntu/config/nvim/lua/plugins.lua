-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'tssm/fairyfloss.vim'
    use 'gmoe/vim-espresso'
    use 'gmoe/vim-eslint-syntax'
    use 'raphamorim/lucario'
    use { 'neoclide/coc.nvim', branch = 'release' }
    use 'nvim-treesitter/nvim-treesitter'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
            },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {'akinsho/toggleterm.nvim', tag = 'v2.*'}
    use 'jiangmiao/auto-pairs'
    use 'junegunn/fzf.vim'
    use 'junegunn/fzf'
    use 'vim-skk/eskk.vim'
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
end)

