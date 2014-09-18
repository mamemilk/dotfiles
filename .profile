#proxy setting for nc intra
source ~/.proxy_intra

alias rm='rm -i'
alias o='open'
alias ls='ls -G'
alias la='ls -a'
alias ll='ls -l'

alias log='emacs /Users/shimizu/Documents/daily_log/daily_log_2014.org'
alias logai='grep ☆  /Users/shimizu/Documents/daily_log/daily_log_2014.org | tr ☆  -'
alias lal='emacs /Users/shimizu/Documents/daily_log/lesson_and_learned_2014.org'

alias python='python3'
alias pip='pip3'

alias gcc='gcc -std=gnu99'

alias sed='gsed'

#alias od='od -t x2 -A x'

. `brew --prefix`/etc/profile.d/z.sh

export PATH=$PATH:/Users/shimizu/Programs/ProjectBased/mytools/bin:/Users/shimizu/Programs/ProjectBased/mytools/git/tools/bin

export PS1="\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

export SVN_EDITOR=vi
export GNUTERM='x11'

export PATH="/usr/local/bin:$PATH"
