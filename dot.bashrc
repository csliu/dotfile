#
# Config colorful bash env
#
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias ll='ls -GFhl'
alias ffind='find . -name'

#
# Config iTerm2 @ macOS
#
if [ $ITERM_SESSION_ID ]; then
    export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

#
# Config git promopt
#
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo “(”${ref#refs/heads/}“)”
}

#
# Config bash promopt 
#
function show_symlink {
    wd=“$(pwd)”
    linkdir=“$(readlink -n $wd)“;
    if readlink -n $wd >/dev/null; then
echo ” -> $linkdir “;
    fi
}
export PS1='[\t]\[\033[1;32m\]$(show_symlink)\u@\h\[\033[0m\]:\[\033[1;34m\]\w\[\033[0m\]$(parse_git_branch)\$ '
