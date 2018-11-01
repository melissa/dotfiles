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

PS1="[\$?] \[\033[0;32m\]\u@\h:\[\033[0;94m\]\w\[\033[0;93m\]\$(parse_git_branch)\[\033[0m\]$ "

# display ls colors
export CLICOLOR=1
export LS_COLORS='ln=93:or=101:mi=101:di=32:fi=0:ex=35'

# export editor
export EDITOR=vim

# lots of history
export HISTSIZE=1000000
export HISTFILESIZE=1000000000

alias be="bundle exec"
alias bi="bundle install --path .bundle"
alias bu="bundle update"
alias bootstrap="rake package:implode package:bootstrap"
alias uber_build="rake pl:jenkins:uber_build --trace"
alias uber_ship="rake pl:jenkins:uber_ship --trace"

alias go="git clone"

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~'

alias vanagon_loc="export VANAGON_LOCATION=file:///home/melissa/vanagon"
alias packaging_loc="export PACKAGING_LOCATION=file:///home/melissa/packaging"

alias rspec="bundle exec rspec spec --color --format documentation --order random"
alias rspec_all="rbenv local 2.1.1 ; bundle install ; bundle exec rspec spec --color --format documentation --order random ; rbenv local 2.4.1 ; bundle install ; bundle exec rspec spec --color --format documentation --order random"

export PATH="$HOME/.cargo/bin:$PATH"
