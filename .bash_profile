if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

PATH=$PATH:$HOME/bin

export PATH

alias   rm='rm -i'
alias   cp='cp -pi'
alias   mv='mv -i'

alias gst='git status'
alias glo='git log'
alias gdi='git diff'
alias gad='git add'
alias gco='git commit'
alias gbr='git branch'
alias gch='git checkout'
alias gme='git merge'
alias gbd="git checkout master && git branch --merged | grep -v '*' | xargs -I % git branch -d %"
