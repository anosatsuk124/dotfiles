if status is-interactive
    alias ls "exa --icons"
    alias la "exa -lag"
    alias tree "exa --icons -T"
    alias lg lazygit
    alias vi nvim
    set EDITOR nvim

    if test -d $HOME/.nvm/current
        set PATH $HOME/.nvm/current/bin $PATH
    end

    if test -d $HOME/fvm/default/bin
        set PATH $HOME/fvm/default/bin $PATH
    end

	function nvm
        bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
	end
	# key bindings
	function fish_user_key_bindings
        fish_vi_key_bindings
        bind -M insert -m default jj backward-char force-repaint
	end

	set fish_color_command white

	# Set the env for fzf
	set -gx FZF_DEFAULT_OPTS '--height 40% --reverse --border'
	set -gx FZF_DEFAULT_COMMAND 'ag -a --ignore .git -g ""'

	zoxide init fish | source

    set NVM_SYMLINK_CURRENT true
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/anosatsuk124/.ghcup/bin # ghcup-env
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/anosatsuk124/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

