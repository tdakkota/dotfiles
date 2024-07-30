if not status is-interactive
	exit
end

set _completion_commands \
	'atlas completion fish' \
	'buf completion fish' \
	'caddy completion fish' \
	'chezmoi completion fish' \
	'delta --generate-completion fish' \
	'ent completion fish' \
	'fd --gen-completions fish' \
	'gh completion -s fish' \
	'helm completion fish' \
	'kind completion fish' \
	'kubectl completion fish' \
	'minikube completion fish' \
	'rbw gen-completions fish' \
	'rg --generate complete-fish' \
	'zellij setup --generate-completion fish'

for script in $_completion_commands
	set cmd $(echo $script | cut -d " " -f1)
	if command -q $cmd
		eval $script | source
	end
end