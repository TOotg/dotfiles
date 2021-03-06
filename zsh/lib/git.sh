
alias g='git'
alias gpl='git pull --prune'
alias gg='git grep'
alias gbl='git blame'
alias ga='git add'
alias gb='git branch'
alias gs='git status -sb'
alias gcp='git cherry-pick'
alias gm='git merge'

alias gp='git push'
alias gpf='gp --force-with-lease'

alias gd='git diff --color'
alias gdc='gd --cached'
alias gds='gd --shortstat'
alias gdcs='gdc --shortstat'

alias gst='git stash'
alias gsta='gst apply'
alias gsts='gst show --patch'
alias gstl='gst list'

alias gc='git commit --verbose'
alias gcm='gc -m'
alias gca='gc --all'

alias gco='git checkout'
alias gcot='gco --track'

alias gr='git reset'
alias gpop='gr HEAD~'

alias gcf=' git clean --force'
alias gci=' git clean --interactive'

alias gsh='git show --pretty=fuller'
alias gshs='gsh --shortstat'
alias gsh~='gsh HEAD~'
alias gsh2='gsh HEAD~2'
alias gsh3='gsh HEAD~3'
alias gsh4='gsh HEAD~4'
alias gsh5='gsh HEAD~5'
alias gsh6='gsh HEAD~6'
alias gsh7='gsh HEAD~7'
alias gsh8='gsh HEAD~8'
alias gsh9='gsh HEAD~9'

# cd to git repo root dir.
alias groot='cd "$(git rev-parse --show-toplevel)"'

# Open Vim and run command from `junegunn/fzf.vim`, for fuzzy finding of all
# commits.
# TODO set `g:fzf_layout` here so this fills screen?
alias gf='vim +Commits'

alias glog="git log \
    --graph \
    --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%ar / %cr)%Creset' \
    --abbrev-commit \
    --date=relative"
alias glogall='glog --all'

alias gbi='git bisect'
alias gbis='gbi start'
alias gbir='gbi reset HEAD'
alias gbib='gbi bad'
alias gbig='gbi good'

alias gre='git rebase'
alias grec='gre --continue'
alias grea='gre --abort'
alias gres='gre --skip'
alias grei='gre --interactive'
alias grei2='grei HEAD~2'
alias grei3='grei HEAD~3'
alias grei4='grei HEAD~4'
alias grei5='grei HEAD~5'
alias grei6='grei HEAD~6'
alias grei7='grei HEAD~7'
alias grei8='grei HEAD~8'
alias grei9='grei HEAD~9'
