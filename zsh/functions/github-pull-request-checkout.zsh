# ref: https://fromatom.hatenablog.com/entry/2020/03/31/135410
if (( $+commands[gh] )); then
    function github_pull_request_checkout() {
        local select_pr_id=$(gh pr list | fzf | awk '{print $1}' )
        if [ -n "$select_pr_id" ]; then
            BUFFER="gh pr checkout ${select_pr_id}"
            zle accept-line
        fi
        zle clean-screan
    }
fi
zle -N github_pull_request_checkout
bindkey "^g^p" github_pull_request_checkout
