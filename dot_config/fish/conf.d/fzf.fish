if not status is-interactive && test "$CI" != true
    exit
end

# Set default fzf options.
set --export FZF_CTRL_R_OPTS '-i --exact --info=hidden --border=none'

# Install only reverse search.
fzf_configure_bindings --directory= --git_log= --git_status= --processes= --variables=
