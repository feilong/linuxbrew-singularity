export LANG="en_US.utf8"

export PS1="🐙  \e[32m\D{%Y-%m-%d %H:%M:%S} \H:\w\e[0m\n[\W] $> "

export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$(brew --prefix)/share/man:$MANPATH"
export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"

export TERM=xterm-256color

alias ..='cd ..'
alias ...='cd ..;cd ..'

alias ls="ls --color"
alias ll="ls -lh --color"

alias du='du -ch --max-depth=1'
