if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

PATH=$PATH:$HOME/bin

export PATH

alias   rm='rm -i'
alias   cp='cp -pi'
alias   mv='mv -i'

alias s='git status'
alias c='git commit'
alias a='git add'
alias d='git diff'
alias gl='git log'
