# If you come from bash you might have to change your $PATH.
export PATH="$HOME/.local/bin:$HOME/.local/bin/color-toys:$HOME/.cargo/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=14

# Custom environment variables.
export GPG_TTY="${TTY:-$(tty)}"
export HISTFILE=$HOME/.cache/.zsh_history
export HISTSIZE=10000

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Custom Highlight syntax
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#22242a,underline"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias dl="curl -C - -L -O"
alias gitgud="echo 'git gud loser'"
alias mirrorupd="sudo reflector --verbose -c Philippines -c Indonesia -c Japan -c Singapore --sort rate --save /etc/pacman.d/mirrorlist"
alias rfsh="sudo swapoff -a && sudo swapon -a && sudo sysctl vm.drop_caches=1"
alias reload="source ~/.zshrc"

alias c="clear"
alias cat="bat --color always --plain"
alias du="duf"
alias ls="exa"
alias find="fd"
alias nf="neofetch"
alias vi="nvim"
alias nv="nvim"
alias mv="mv -v"
alias cp="cp -vr"
alias rm="rm -vr"

# Init starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
