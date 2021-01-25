# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/james.holman/.oh-my-zsh"
export EDITOR=nvim;
export VISUAL=nvim;
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/Users/james.holman/Library/Python/3.7/bin:$PATH


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# . /Users/james.holman/.nix-profile/etc/profile.d/nix.sh

alias "tpro"="cd ~/Google\ Drive\ File\ Stream/My\ Drive/TestProjects/"

mkcd() { mkdir $1 && cd $1} 


alias typora="open -a typora"

alias pub="saml2aws login --profile=fe-build && np"
alias deadman="deadfile ./src/js/export.js --exclude lib fixtures test build scss dist docs coverage"
export GITHUB_DIFF_TOKEN=b524b757bfcfab611fd239090d7433c91f22f64a
export EDITOR=vim
alias o=oni2

# YARN 
alias y=yarn
alias yw="yarn watch"
alias yt="yarn test"
alias ytw="yarn test:watch"
alias ytuw="yarn test:unit:watch"
alias yl="yarn lint --fix"
alias ylt="yarn lint --fix && yarn test"
alias yyw="yarn && yarn watch"
alias yyt="yarn && yarn test"
alias ybm="yarn build:module"

# GIT 
alias gp="git push"
alias ga="git add ."
function gc() {
  git commit -m "$1"
}

# Kill
function killport() { 
  kill -9 $(lsof -t -i:"$1")
}


alias "nocors"="open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir='/tmp/chrome_dev_test' --disable-web-security"
alias vim=nvim
alias 'authget'='$HOME/Workspaces/bretts-trusty-bash-auth-grabber'
alias weather="curl wttr.in/Sydney"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/james.holman/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/james.holman/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/james.holman/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/james.holman/google-cloud-sdk/completion.zsh.inc'; fi
#
# For z navigation
source "/Users/james.holman/.config/zshrc/zsh-z.plugin.zsh"
autoload -U compinit && compinit
zstyle ':completion:*' menu select

alias godark="sed -i -e 's/\*light/\*dark/g' '/Users/james.holman/.config/alacritty/alacritty.yml'"
alias golight="sed -i -e 's/\*dark/\*light/g' '/Users/james.holman/.config/alacritty/alacritty.yml'"

# Start starship
eval "$(starship init zsh)"

# use exa to replace ls
if [ "$(command -v exa)" ]; then
    unalias -m 'll'
    unalias -m 'l'
    unalias -m 'la'
    unalias -m 'ls'
    alias ls='exa -G  --color auto --icons -a -s type'
    alias ll='exa -l --color always --icons -a -s type'
fi

# Bat instead of cat
if [ "$(command -v bat)" ]; then
  unalias -m 'cat'
  alias cat='bat -pp --theme="Nord"'
fi

# For SDL2 for Rust
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

