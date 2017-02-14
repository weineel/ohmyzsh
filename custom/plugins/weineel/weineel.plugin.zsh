# alias
alias gbdm='git branch -d $(git branch --merged | grep -v -E "develop|master") '
alias gcza='git add . && git cz'
alias lg='inno-lane git'
alias lgcmr='inno-lane git create-mr'
alias lgs='inno-lane git sync'
alias lgsc='inno-lane git sync -c'

alias lgen='inno-lane gen'

# Copies the pathname of the current directory to the system or X Windows clipboard
function copydir {
  emulate -L zsh
  print -n $PWD | clipcopy
}

# Copies the contents of a given file to the system or X Windows clipboard
#
# copyfile <file>
function copyfile {
  emulate -L zsh
  clipcopy $1
}

# 提交代码并发起 gitlab mr
#gitlabmr() {
#  target_branch='standard'
#  if ! [ -z $1 ]; then
#    target_branch=$1
#  fi
#  open -a /Applications/Google\ Chrome.app "http://git.patsnap.com/inno-enterprise/web/innoe-web/merge_requests/new?utf8=%E2%9C%93&merge_request%5Bsource_project_id%5D=3836&merge_request%5Bsource_branch%5D=$(git_current_branch)&merge_request%5Btarget_project_id%5D=3836&merge_request%5Btarget_branch%5D=$target_branch"
#}

# git 拉取并切换到指定分支
# gsync-c() {
#  if ! [ -z $1 ]; then
#    print "git fetch origin $1:$1 && gco $1"
#    git fetch origin $1:$1 && gco $1
#  else
#    print '没有指定分支名'
#  fi
#}
# git 同步分支
#gsync() {
#  if ! [ -z $1 ]; then
#    print "git fetch origin $1:$1"
#    git fetch origin $1:$1
#  else
#     print '没有指定分支名'
#  fi
#}

