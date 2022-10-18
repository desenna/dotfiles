# ----------------------
# Git Aliases
# mostly from https://github.com/davidjohansson/dotfiles
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add --all'
alias gai='git add -i'
alias gap='git add -p'
alias gau='git add --update'
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch --delete '
alias gc='git commit -s'
alias gcan='git commit -s --amend --no-edit'
alias gcf='git commit -s --fixup'
alias gcm='git commit -s --message'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gcod='git checkout develop'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gd='git diff'
alias gda='git diff HEAD'
alias gds='git diff --staged'
alias gfp='git fetch --prune'
alias gi='git init'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gpop='git reset --soft HEAD^'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grv='git remote -v'
alias grpo='git remote prune origin'
alias grpod='git remote prune origin --dry-run'
alias grpu='git remote prune upstream'
alias grpud='git remote prune upstream --dry-run'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'

# ----------------------
# Git Functions
# ----------------------
# Git log find by commit message
function glf() { git log --all --grep="$1"; }

function g() {
    if [[ $# > 0 ]]; then
        # if there are arguments, send them to git
        git $@
    else
        # otherwise, run git status
        git s
    fi
}
