lua require('plugins')
runtime plugins_conf/bufferline.lua
runtime plugins_conf/nvim-tree.lua
runtime plugins_conf/toggle-term.lua
runtime plugins_conf/coc.vim
runtime plugins_conf/colorscheme.vim
" runtime plugins_conf/defx.vim
runtime plugins_conf/nvim-treesitter.vim
runtime plugins_conf/fzf.vim
runtime plugins_conf/eskk.vim
set clipboard+=unnamedplus
set number
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
" set termguicolors
" Prefix key
nnoremap <C-b> <Nop>
inoremap <silent> jj <ESC>
" config for neovim-remote
autocmd FileType gitcommit,gitrebase,gitconfig set bufhidden=delete

" Compiling when saved


if has('persistent_undo')
	let undo_path = expand('~/.config/nvim/.undo')
	exe 'set undodir=' .. undo_path
	set undofile
endif

" Anywhere SID.
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

" completion settings
set completeopt=menuone,noinsert
