# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

#Path to your oh-my-zsh installation.
export ZSH=/Users/Brian_Lin/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="blin"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z brew svn)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

export LSCOLORS=ExFxCxDxBxegedabagacad

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
alias lsa="ls -Gpa"
alias clr='clear'
alias reload="source ~/.zshrc"
alias whereami="pwd"
alias cls="clear && printf '\e[3J'"

#dark-mode toggles
alias dark='dark-mode on'
alias light='dark-mode off'

#directory management aliases
alias rm='rm -ir'
alias cp='cp -i'
alias mv='mv -i'

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

#thefuck set-up
eval $(thefuck --alias)

#ls after cd
function chpwd() { clear; ls;} #”emulate -L zsh” add before ls if broken

#source homebrew token file
if [ -r ~/.homebrew_api ]
then
  source ~/.homebrew_api
fi
