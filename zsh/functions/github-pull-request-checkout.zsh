# ref: https://fromatom.hatenablog.com/entry/2020/03/31/135410
if (( $+commands[gh] )); then
    function github-pull-request-checkout() {
        local select_pr_id=$(gh pr list | fzf | awk '{print $1}' )
        if [ -n "$select_pr_id" ]; then
            BUFFER="gh pr checkout ${select_pr_id}"
            zle accept-line
        fi
        zle clean-screan
    }
fi
zle -N github-pull-request-checkout
bindkey "^g^p" github-pull-request-checkout
