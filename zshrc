# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. (random for random theme each time)
ZSH_THEME="ys"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# ZSH Plugins to load on startup
plugins=(git extract colorize colored-man zsh-syntax-highlighting)

# User configuration

# Path to GOLANG workspace
export GOPATH="/home/simon/Documents/Projets/go"
# Path to Ruby installed gems 
export RUBYPATH="/home/simon/.gem/ruby/2.2.0/bin"
export PATH="/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$GOPATH/bin:$RUBYPATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Forces xfce-term to use 256 colors

# if [ "$COLORTERM" == "xfce4-terminal" ] && [ -e /usr/share/terminfo/x/xterm-256color ] ; then 
#    export TERM=xterm-256color
# fi

# Personal aliases
if [ -e /bin/nvim ] ; then
    alias vi=nvim
    alias vim=nvim
elif [ -e /bin/vim ] ; then
    alias vi=vim
fi

alias zshconfig="vim ~/.zshrc"
# source alias_iut.zsh

# Load aliases for quick connection via RDP
# source $HOME/dotfiles/alias_iut.zsh

# alias java8="/usr/lib/jvm/java-8-openjdk/jre/bin/java"
