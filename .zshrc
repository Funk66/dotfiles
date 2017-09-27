# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=false
export ZSH=/home/guillermo/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
 #ZSH_THEME="robbyrussell"
POWERLEVEL9K_MODE='awesome-fontconfig'
ZSH_THEME="powerlevel9k/powerlevel9k"

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
#ENABLE_CORRECTION="true"

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
plugins=(git tmux vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep correct_all
bindkey -v
export KEYTIMEOUT=1

# Slash completion for directories '../'
zstyle ':completion:*' special-dirs true


# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/guillermo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim="nvim"
alias book="ssh pi@onyx.dynu.com 'tail -n 5 /home/pi/scripts/packt/log'"
alias dell='ssh guillermo@192.168.1.100'
alias zero='ssh pi@zero'
alias wake='sudo ether-wake -b 00:19:b9:1b:e2:b2'
alias anni='ssh anni@192.168.1.102'
alias jazz='python3 ~/Workspace/oss/Jazzifier/update.py -f ~/Workspace/oss/Jazzifier/conf.yml'
alias weather='curl wttr.in/Berlin'
alias moon='curl wttr.in/Moon'
alias vimdiff="nvim -d"
alias activate="source env/bin/activate"
alias reload="deactivate && activate"

rpi='pi@onyx.dynu.com:~'
dell='guillermo@dell:~'
anni='anni@192.168.1.102:~'
zero='pi@zero:~'

export BITELIO_SECRET='asdflkjasdflkjsdfkljsdf'
export DOMAIN='http://localhost:9000'
export SESSION_SECRET='ASDLFKJASÑDLKJSDFKLJ'
export KANBAN_API_URL='http://localhost:5000'
# API
#export SENTRY_DSN='https://dcac8c7603b8400ea92a3d5036484eab:799c6ffb77f54afdb61bd95171fba2ee@sentry.io/186891'
# Frontend
#export SENTRY_SDN='https://6175a420892e486193d6bc06dacff61d:9ce3389d381e406e90f08d7d4fe2ef7d@sentry.io/187179'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

#export GOPATH=~/Workspace/go
#export PATH=$GOPATH:$GOPATH/bin:$PATH

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir dir_writable vi_mode)
# Add vcs
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs virtualenv root_indicator vcs)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_DELIMITER='..'


alias devtunnel='ssh tms-dev01 -L 9200:localhost:9200'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
