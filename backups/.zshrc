# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.rbenv/bin:$PATH"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
dir
rbenv
vcs
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
status
root_indicator
background_jobs
history
time
)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Add a space in the first prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"

# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=’red’

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
colored-man-pages
bgnotify
zsh-autosuggestions
zsh-syntax-highlighting
vscode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
export EDITOR='vim'

eval "$(ssh-add)"
eval "$(rbenv init -)"
eval "$(nodenv init -)"
eval "$(pyenv init -)"
