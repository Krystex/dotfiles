# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export ANSIBLE_NOCOWS=1

export DISABLE_MAGIC_FUNCTIONS=true

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
plugins=(
  git
  macos
#  node
)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
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

#export OPENSSL_INCLUDE_DIR=`brew --prefix openssl`/include
#export OPENSSL_LIB_DIR=`brew --prefix openssl`/lib
#export PATH=/Users/simon/.cargo/bin:$PATH
#export PATH="/usr/local/sbin:$PATH"
#PATH="/usr/local/sbin:$PATH"

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH=$PATH:$USER/Library/Android/sdk/platform-tools/
export PATH="/usr/local/opt/sqlite/bin:$PATH"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"



# ------ ------
alias tomp3="youtube-dl -x --audio-format mp3 --audio-quality 320K -o '%(title)s.%(ext)s'"
alias k="kubectl"
alias ap="ansible-playbook -i inventory.ini"
alias srcsh="source ~/.zshrc"

alias subl="open -a 'Sublime Text' $1"
alias config="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
config config --local status.showUntrackedFiles no

export PATH=$USER/.local/bin:$PATH

export EDITOR=vim
alias dc=docker-compose
alias python=python3

#export PROMPT=$'\n'"%F{green} %*%F{magenta} %3~ $(git_prompt_info) %F{white}"$'\n'"$ "
precmd() { print "" }
NEWLINE=$'\n'
PROMPT='%F{green} %*%F{magenta} %3~  $(git_prompt_info) %F{white}${NEWLINE}'
PROMPT+='%F{133}➤ %f'

# RPROMPT='🐳 %K{020}${DOCKER_HOST#ssh://}%k'
PROMPT="╔ %F{72} %F{132}%3~  $(git_prompt_info) %F{fg0}$NEWLINE╚ "


source <(kubectl completion zsh)

