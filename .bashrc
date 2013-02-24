#setup syncergy
#sudo /usr/bin/synergyc -n dayne-laptop --daemon 10.57.162.20:24800
PATH=/usr/local/bin:$PATH
PATH=$PATH:/Users/dayne/git.git
PATH=/usr/local/git/bin:$PATH

#setup perforce for amazon servers
export P4CONFIG=.p4config
export P4PORT=perforce.amazon.com:9591
#export P4CLIENT=dayne-lassenWorkspace

#setup vim as the default editor
export EDITOR=vim

#git
alias glog='git log --decorate --graph --all --oneline'

#Add my custom scripts to the path
PATH=$PATH:~/bin

#current git branch in prompt
function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}")"
}
if [ -z ${GIT_INFO} ]; then
    GIT_INFO="\$(parse_git_branch)"
    export PS1="$PS1$GIT_INFO "
fi

#avoid the Too many open files problem
ulimit -n 2000

alias post-review-git='git diff -U999999999 --no-color origin/mainline..HEAD | post-review -a - -o --branch="mainline"'

#post-review with git on OSX
alias post-review-git-ios='git diff -U999999999 --no-color origin/mainline..HEAD | post-review -a - -o --target-groups="mesquite-ios-dev_40amazon_2Ecom" --target-people="piwonka, poston, seanlain" --branch="mainline"'
alias post-review-git-mesquite='git diff -U999999999 --no-color origin/mesquite..HEAD | post-review -a - -o --target-groups="" --target-people="piwonka, poston, seanlain" --branch="mesquite"'

#Get the number of lines contributed by each user in a repo
alias gstats='git ls-tree -r HEAD|cut -f 2|grep -E "\.(cc|h|cpp|hpp|c|txt|m|mm)$" | xargs -n1 git blame --line-porcelain|grep "author "|sort|uniq -c|sort -nr'

#Redding Build stuff
export ANDROID_SDK=/Users/dayne/android-sdk/
export PATH=/Users/dayne/android-sdk/tools:$PATH
export PATH=/Users/dayne/android-sdk/platform-tools:$PATH
export M2_REPO=/Users/dayne/.m2/repository
