if status is-interactive
    alias ls "exa --icons"
    alias la "exa -lag"
    alias tree "exa --icons -T"

    if test -d $HOME/.nvm/current
        set PATH $HOME/.nvm/current/bin $PATH
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
end
