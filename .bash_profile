export USER=melissa
if [ "$HOME" = "/Users/Melissa" ]; then
  export HOME=/Users/$USER
fi
export TEAM=release
export PATH="$HOME/.rbenv/bin:$PATH:$HOME/bin"

if [ -x "$(command -v rbenv)" ]; then
  eval "$(rbenv init -)"
fi

source $HOME/.git-completion.bash

if [ -e $HOME/.bashrc ]; then
  source $HOME/.bashrc
fi

#  show git branch in terminal prompt
function parse_git_branch(){
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/:(\1)/'
}

PS1="[\$?] \[\033[0;32m\]\u@\h:\[\033[0;96m\]\w\[\033[0;93m\]\$(parse_git_branch)\[\033[0m\]$ "

# for packaging and stuff
# display ls colors
export CLICOLOR=1

# export editor
export EDITOR=vim

# lots of history
export HISTSIZE=1000000
export HISTFILESIZE=1000000000

alias be="bundle exec"
alias bi="bundle install"
alias bootstrap="rake package:implode package:bootstrap"
alias uber_build="rake pl:jenkins:uber_build --trace"
alias uber_ship="rake pl:jenkins:uber_ship --trace"

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~'

alias vanagon_loc="export VANAGON_LOCATION=file:///home/melissa/vanagon"
alias win_64="time bundle exec build puppet-agent windows-2012r2-x64 --preserve"
alias win_86="time bundle exec build puppet-agent windows-2012r2-x86 --preserve"
