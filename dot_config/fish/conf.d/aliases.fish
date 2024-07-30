if status is-interactive
	# Replace ls with eza.
	if test -z "$VSCODE_INJECTION"
		# Enable hyperlinks unless...
		alias ls='eza --hyperlink'
	else
		# ...this is for VSCode's integrated terminal
		alias ls='eza'
	end
	alias ll='ls --long --header --all --git --classify --icons'
	alias la='ls --all'
	alias l='ls --classify --icons'
end
