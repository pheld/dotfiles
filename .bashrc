if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

alias start_pow="launchctl load $HOME/Library/LaunchAgents/cx.pow.powd.plist"
alias stop_pow="launchctl unload $HOME/Library/LaunchAgents/cx.pow.powd.plist"

alias vim='mvim -v'

alias r='bundle exec rails'
alias b='bundle exec'
alias c='bundle exec cap'
alias gs='bundle exec guard start'
alias f='git flow feature'
alias release='git flow release'
alias rk='b rake'
alias mig='b rake db:migrate db:test:prepare'
 
complete -o default -o nospace -F __git_flow_feature f
complete -o default -o nospace -F __git_flow_release release

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
