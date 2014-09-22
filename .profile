#proxy setting for nc intra

if [ $USER = shimizu ] ; then
    source ~/.proxy_intra;
fi

if [ -d ~/.theme ] ; then
    :
else
    mkdir .theme
fi

if [ -d ~/.theme/solarized ] ; then
    :
else
    git clone https://github.com/altercation/solarized.git
fi
if [ -d ~/.theme/dircolors-solarized ] ; then
    :
else
    git clone https://github.com/seebi/dircolors-solarized.git
fi

if brew list  | grep coreutils >/dev/null  ; then
    eval "$(gdircolors ~/.theme/dircolors-solarized/dircolors.ansi-dark)"
    alias ls='gls --color=auto'
else
    echo "Warning : coreutils is not installed. use freebsd ls instead of gls"
    alias ls='ls -G'
fi


if [ -d ~/.emacs.d/theme ] ; then
    :
else
    mkdir ~/.emacs.d/theme
    ln -s ~/.theme/solarized/emacs-colors-solarized ~/.emacs.d/theme
fi



alias rm='rm -i'
alias o='open'
alias e='emacs'

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

export SVN_EDITOR=emacs
export GNUTERM='x11'

export PATH="/usr/local/bin:$PATH"
