# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi


alias ungit="find . -name '.git' -exec rm -rf {} \;"
alias gb='git branch'
alias gba='git branch -a'
alias gbvv='git branch -v -v'
alias gbd='git branch -d'
function grbd() {
  git push origin :$1
}
alias gbm='git branch -m'
alias gbs='git-branch-status -v'

alias ga='git add'
alias gaa='git add .'
alias gau='git add -u'
alias gai='git add -i'
alias gap='git add -p'

function gg() { 
    git add . 
    git commit -m "$*"
}

function gc() { 
    git commit -m "$*"
}
alias gcc='git commit -v'
alias ggg='git commit -v -a'


alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gld='git log --decorate --oneline --graph --branches --not --remotes=origin'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcd='git checkout develop'
alias gcm='git checkout master'
alias gd='git dsf'
alias gdc='git dsf --cached'
alias gdd='git dsf develop'
alias gf='git fetch'
alias gpl='git pull'
alias gp='git push'
alias gph='git push heroku'
alias gpb='git push origin $(git symbolic-ref --short HEAD):$(git symbolic-ref --short HEAD)'
alias g='git status && gil'
alias gs='git stash'
alias gss='git stash show -p'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gsd='git stash drop'
alias gx='gitx'
alias eg='subl .git/config'
alias grh='git reset HEAD'
alias grs='git reset --soft HEAD^'
alias grhh='git reset --hard HEAD^'
alias bfg='java -jar ~/bin/bfg-1.12.7.jar' # remove unwanted files in git history

alias gm='git merge --no-ff'
alias gcp='git cherry-pick'

alias gskip='git update-index --skip-worktree $*'
alias gnoskip='git update-index --no-skip-worktree $*'

function gil() {
  if git ls-files -v | grep -q "^S"
  then echo "\nSkipped files:\n  (remember to un-ignore so it can be commited!) \e[0;35m" && git ls-files -v | grep "^S" | sed 's/^S/        ignored:   /' && echo -e "\e[0m"
  fi  
}

function grsc() {
    git reset --soft HEAD^
    git commit -m "$*"
}

function gpld() {
  git stash
  git checkout develop
  git pull
}