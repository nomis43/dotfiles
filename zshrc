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

export EDITOR="nvim"

# Path to GOLANG workspace
export GOPATH="$HOME/Documents/Projets/go"
export GOBIN="$GOPATH/bin"
# Path to Ruby installed gems 
export RUBYPATH="$HOME/.gem/ruby/2.3.0/bin"
export ANDROID_HOME="$HOME/Apps/android-sdk"
export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$GOPATH/bin:$RUBYPATH"

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
alias ip6on="sudo sysctl -w net.ipv6.conf.all.disable_ipv6=0"
alias ip6off="sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1"

export CCACHE_DIR="$HOME/.ccache"
export CC="ccache gcc"
export CXX="ccache g++"
export PATH="/usr/lib/ccache:$PATH"

# alias java8="/usr/lib/jvm/java-8-openjdk/jre/bin/java"
