alias gs='git status'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gf='git fetch'
alias gc='git checkout'
alias gr='git reset'
alias ga='git add'
alias gl='git log'
alias gd='git diff'
alias gdc='git diff --cached'
alias gb='git branch -vv'

alias r='ranger'
alias gts='gotossh'
alias vim='vi'
#alias vim='nvim'

### for build
alias gor='go run'
alias gob='go build'
alias goc='go clean'
alias got='go test'
alias mc='make clean'
alias mk='make -j$(nproc)'

function git_push()
{
    set -x
    gitdir=$(git rev-parse --git-dir); scp -p -P 29418 yutq@git.chinaredflag.cn:hooks/commit-msg ${gitdir}/hooks/
    git commit --amend --no-edit
    git push gerrit HEAD:refs/for/v8-baseos -f
    set +x
}

if [ -f ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

