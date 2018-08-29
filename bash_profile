# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

#bash prompt

##-ANSI-COLOR-CODES-##
#Color_Off="\033[0m"
###-Regular-###
#Red="\033[0;31m"
#Green="\033[0;32m"
###-Bold-###
#BRed="\033[1;31m"
#BGreen="\033[1;32m"

#function __stat() {
#	if [ $? -eq 0 ]; then
#		echo -en "$Green[✔]$Color_Off"
#	else
#		echo -en "$Red[✘]$Color_Off"
#	fi
#}

#COLOROFF="[\033[0m\]"
#BLACK="\[\033[0;30m\]"
#BLACKBOLD="\[\033[1;30m\]"
#RED="\[\033[0;31m\]"
#REDBOLD="\[\033[1;31m\]"
#GREEN="\[\033[0;32m\]"
#GREENBOLD="\[\033[1;32m\]"
#YELLOW="\[\033[0;33m\]"
#YELLOWBOLD="\[\033[1;33m\]"
#BLUE="\[\033[0;34m\]"
#BLUEBOLD="\[\033[1;34m\]"
#PURPLE="\[\033[0;35m\]"
#PURPLEBOLD="\[\033[1;35m\]"
#CYAN="\[\033[0;36m\]"
#CYANBOLD="\[\033[1;36m\]"
#WHITE="\[\033[0;37m\]"
#WHITEBOLD="\[\033[1;37m\]"

BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
LIME_YELLOW=$(tput setaf 190)
YELLOW=$(tput setaf 3)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

#export PS1='$(__stat) [bplin: \w] $(__arrow) '
PS1="\[${CYAN}\]\[${BRIGHT}\]brian \[${WHITE}\]in \[${BLUE}\]\[${BRIGHT}\]\w \[${YELLOW}\]\[${BOLD}\]→ \[${NORMAL}\]"
# command status (shows check-mark or red x if last command failed)
#PS1+='$(__stat) '$Color_Off
#PS1+=$CYANBOLD'brian '$Color_Off
#PS1+=$WHITE'in '$Color_Off
#PS1+=$BLUEBOLD'\w'$Color_Off
#PS1+=$CYANBOLD'] '$Color_Off
#PS1+=$YELLOWBOLD' → '$Color_Off

export PS1

#coreutils
#PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
#MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

#bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

#LS color scheme
#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced			#dark theme
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=ExFxCxDxBxegedabagacad			#light theme

#ALIAS
#Application Alias
alias chrome="open -a google\ chrome"
alias f='open -a Finder '
alias fastx="open -a fastx"
alias fh='open -a Finder .'
alias firefox="open -a firefox"
alias mathematica="open -a mathematica"
alias safari="open -a safari"
alias spotify="open -a spotify"
alias spark="open -a spark"
alias clion="open -a CLion"
alias intellij="open -a IntelliJ\ IDEA"
alias pycharm="open -a PyCharm"

#SSH Alias
alias sshews="ssh bplin2@linux.ews.illinois.edu"
alias sshews1="ssh bplin2@linux-a1.ews.illinois.edu"
alias sshews3="ssh bplin2@linux-a3.ews.illinois.edu"
alias sshcl="ssh bplin2@cl.linguistics.illinois.edu"

#terminal aliases
alias v="vim"
alias vi="vim"
alias ls="ls -Gp"
alias reload='source ~/.bash_profile'
alias clr='clear'
alias cls='clear && printf '\e[3J''

#dark-mode toggles
alias dark='dark-mode on'
alias light='dark-mode off'

#directory navigation aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

#directory management aliases
alias rm='rm -ir'
alias cp='cp -i'
alias mv='mv -i'

#thefuck set-up
eval "$(thefuck --alias fuck)"

#speedtest
alias speedtest='speedtest-cli'

#brew
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

#conda
alias condaup='conda update conda;conda update anaconda'

#weather
alias rolmeaweather='ansiweather -l rolling\meadows,IL -u imperial -f 7'
alias palweather='ansiweather -l palatine,IL -u imperial -f 7'
alias urbweather='ansiweather -l urbana,IL -u imperial -f 7'
alias chamweather='ansiweather -l champaign,IL -u imperial -f 7'
alias chiweather='ansiweather -l chicago,IL -u imperial -f 7'

#compile stuff
alias mk='make -j 5'
alias mkc='make clean'

#python stuff
alias ipython='python -m IPython'

# added by Anaconda2 4.3.1 installer
export PATH="/Users/Brian_Lin/anaconda2/bin:$PATH"

#source homebrew token file
if [ -r ~/.homebrew_api ]
then
  source ~/.homebrew_api
fi
