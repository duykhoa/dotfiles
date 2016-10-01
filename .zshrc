# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="bira"
#ZSH_THEME="fino"
#ZSH_THEME="philips"
ZSH_THEME="steeef"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
plugins=(git zsh-syntax-highlighting)

# User configuration

export PATH="$PATH:$HOME/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# /Users/kevin/.rvm/gems/ruby-2.2.1/bin:/Users/kevin/.rvm/gems/ruby-2.2.1@global/bin:/Users/kevin/.rvm/rubies/ruby-2.2.1/bin

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
fpath=(~/.zsh $fpath)

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias vi="vim"
alias work="cd ~/Workspace"
alias oss="cd ~/Workspace/opensource"
alias c="clear"
alias calc="bc -lq"
alias gpull="git pull"
alias gf="git flow"
alias gfstart="git flow feature start"
alias gffinish="git flow feature finish"
alias gpush="git push -v"
alias tmuxks="tmux kill-server"
alias tmuxn="tmux new -s"
alias tmuxa="tmux attach -t"
#
# My customizations
export EDITOR='vim'
#source ~/.bin/tmuxinator.zsh
#[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

#source ~/.transferrc
#source ~/.git-flow-completion.zsh

export WORKDIR=~/Workspace
export GOPATH=$WORKDIR/go_proj
export PATH="$PATH:$HOME/Workspace/scripts:/usr/local/Cellar/iftop/1.0pre4/sbin:$GOPATH/bin"
export SCRIPT_DIR=$WORKDIR/scripts

alias dcb="docker-compose build"
alias dcu="docker-compose up"
alias dcr="docker-compose run"
alias dockerr="docker run"
alias dockerb="docker build"
