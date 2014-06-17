
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source $HOME/git-completion.bash

if [ -e $HOME/.bashrc ]; then
  source $HOME/.bashrc
fi

#  show git branch in terminal prompt
function parse_git_branch(){
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/:(\1)/'
}
PS1="[\$?] \u@\h:\W\$(parse_git_branch)$ "
# for packaging and stuff
# display ls colors
export CLICOLOR=1

# export editor
export EDITOR=vim

# lots of history
export HISTSIZE=1000000
export HISTFILESIZE=1000000000


#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#    . $(brew --prefix)/etc/bash_completion
#fi
#
