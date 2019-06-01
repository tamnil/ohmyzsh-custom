# Tamnil Saito Junior - 2019 <tamnil@gmail.com>
# ohmyzsh ccustom plugin configuration



alias aptupdate="sudo apt update && sudo apt upgrade"
alias vim-clean-swp="rm ~/.config/nvim/tmp/swp/*"
alias git-ls-status="find . -maxdepth 1 -mindepth 1 -type d -exec sh -c '(echo {} && cd {} && git status -s && echo)' \;"


# bind keys for up/down search (vi mode)
#tmux
bindkey '^[OA' up-line-or-beginning-search
bindkey '^[OB' down-line-or-beginning-search
#notmux
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

bindkey '^P' up-line-or-beginning-search
bindkey '^N' down-line-or-beginning-search

bindkey '^R' history-incremental-pattern-search-backward

#transpose words
bindkey '^T' transpose-words

bindkey '^f' forward-char
bindkey '^b' backward-char
bindkey '^[f' forward-word

bindkey '^[[1;5C' forward-word                        # [Ctrl-RightArrow] - move forward one word
bindkey '^[l' forward-word                        # [Alt-l] - move forward one word
bindkey '^[[1;5D' backward-word                       # [Ctrl-LeftArrow] - move backward one word
bindkey '^[h' backward-word                       # [Ctrl-h] - move backward one word

# bindkey '^[[C' forward-word                        # [Ctrl-RightArrow] - move forward one word
# bindkey '^[[D' backward-word                       # [Ctrl-LeftArrow] - move backward one word

bindkey '^U' backward-kill-line
bindkey '^Y' yank

alias dk='docker'
alias dkc='docker-compose'


git-pull-add-commit-push() {
    echo pulling && git pull && echo adding all && git add . \
        && echo commit && git commit -m $1 && echo pushing && git push
}
