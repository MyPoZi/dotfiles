# direnv
if (( $+commands[direnv] )); then
    eval "$(direnv hook zsh)"
fi

if (( $+commands[kubectl] )); then
    source <(kubectl completion zsh)
fi
