 # .bash_profile

# Get aliases and functions
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

# Showing branch in git initiated directory
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h: \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Terminal Color
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# "source ~/.bash_profile" to refresh
