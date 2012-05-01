[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

alias ll="ls -lah"

alias start_pow="launchctl load $HOME/Library/LaunchAgents/cx.pow.powd.plist"
alias stop_pow="launchctl unload $HOME/Library/LaunchAgents/cx.pow.powd.plist"
alias poststart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias poststop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias rdbr='~/scripts/postgres_stop && ~/scripts/postgres_start && rake db:drop db:create db:migrate db:test:prepare'

alias vim='mvim -v'

alias r='bundle exec rails'
alias b='bundle exec'
alias c='bundle exec cap'
alias gs='bundle exec guard start'
alias f='git flow feature'
alias release='git flow release'
alias rk='b rake'
alias mig='b rake db:migrate db:test:prepare'
alias grup='git remote show | sed '\''/heroku/d'\'' | xargs -I {} git remote update {} --prune'
alias git-review='git diff -U25 master..HEAD | gitx'
alias tdl='tail -f log/development.log'
alias rj='rake jasmine'
alias gba='git branch -a'
alias be='bundle exec'
alias g='grup'
alias gpoh='git push origin HEAD'

complete -o default -o nospace -F __git_flow_feature f
complete -o default -o nospace -F __git_flow_release release

export BUNDLER_EDITOR=mvim

source /usr/local/etc/bash_completion.d/git-completion.bash

PATH=/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/mysql/5.5.14/bin:$PATH
