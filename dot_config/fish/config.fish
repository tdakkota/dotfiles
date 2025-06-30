if not status is-interactive
	exit
end

# Commands to run in interactive sessions can go here
starship init fish | source

# Install only reverse search.
fzf_configure_bindings --directory= --git_log= --git_status= --processes= --variables=

set -gx EDITOR hx
