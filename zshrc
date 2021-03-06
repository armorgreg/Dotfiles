# Path to your oh-my-zsh installation.
#
export ZSH=/home/phat_sumo/.oh-my-zsh export DEFAULT_USER="$USER"
export EDITOR=vim

unsetopt prompt_cr prompt_sp

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster_miami"

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
plugins=(git npm vi-mode fasd sudo archlinux)

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$(ruby -rubygems -e "puts Gem.user_dir")/bin:/home/phat_sumo/.android/sdk/platform-tools:/home/phat_sumo/.android/sdk/tools"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh


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
alias vi="vim"
alias h="cd ~"
alias cl="clear"
eval "$(fasd --init)"
eval $(thefuck --alias)
alias backsafe="/bin/bash ~/Documents/Scripts/backsafe.sh"
alias lc="sl"
alias pacsize="expac -s -H M '%m\t%n'"
alias v="f -e vim"
alias dup='nohup i3-sensible-terminal --working-directory $PWD >&/dev/null'
alias updatezsh="upgrade_oh_my_zsh"
alias addf="vim CMakeLists.txt"
alias red="$(which zsh) ~/Documents/Scripts/redshifting.sh"
alias cleardown="rm -rf ~/Downloads/*"
alias godown="cd ~/Downloads"
alias todo="vim ~/Documents/drive/TODO/todo.md"
alias clk="tty-clock -btc"
alias cll="clear && ls"
alias sinks="/bin/bash ~/Documents/Scripts/movesinks.sh"
alias reloadzsh=". ~/.zshrc"
alias bc="bc -q"
alias music="ncmpcpp"
alias gpaste="gpaste-client"


text () {
  curl http://textbelt.com/text -d number=$1 -d "message=$2" | grep success;
  echo $2; 
}


export BACKGROUND="/home/phat_sumo/Pictures/Backgrounds/vaporwave_delorean.png"

bindkey '^[[Z' reverse-menu-complete

# ROS config stuff 
alias catkin_make="catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python2 -DPYTHON_INCLUDE_DIR=/usr/include/python2.7 -DPYTHON_LIBRARY=/usr/lib/libpython2.7.so"
