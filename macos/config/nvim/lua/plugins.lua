-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'vim-scripts/bnf.vim' -- BNF syntax hilight
    use 'tssm/fairyfloss.vim'
    use 'anosatsuk124/vim-espresso'
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
    use 'norcalli/nvim-colorizer.lua'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'jupyter-vim/jupyter-vim' -- jupyter qtconsole tcp connection
    use 'goerz/jupytext.vim'
    use 'leafOfTree/vim-svelte-plugin' -- svelte sytax higlighting
end)

