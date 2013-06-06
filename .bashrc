#setup vim as the default editor
export EDITOR=vim

#Add my custom scripts to the path
PATH=$PATH:~/bin

#current git branch in prompt
function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}")"
}
export PS1="\[\e[2;31m\]<3\[\e[0m\] ";
if [ -z ${GIT_INFO} ]; then
    GIT_INFO="\$(parse_git_branch)"
    export PS1="$PS1$GIT_INFO "
fi

#avoid the Too many open files problem
ulimit -n 2000

#Get the number of lines contributed by each user in a repo
alias gstats='git ls-tree -r HEAD|cut -f 2|grep -E "\.(cc|h|cpp|hpp|c|txt|m|mm)$" | xargs -n1 git blame --line-porcelain|grep "author "|sort|uniq -c|sort -nr'

#git
alias glog='git log --decorate --graph --all --oneline'

#start a simple http web server in the current working directory.  Requires Python
alias webserver='python -m SimpleHTTPServer'
