# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
PATH=$PATH:~/bin
export PATH

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=~/bin:~/.composer/vendor/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH=/Users/yassine/.oh-my-zsh

# Path to Homebrew
export HOMEBREW_PREFIX=/usr/local

export NODE_PATH='/usr/local/lib/node_modules'

# Make all GNU flavor commands available, may override same-name BSD flavor commands
export PATH="/usr/local/opt/coreutils/libexec/gnubin:${PATH}"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}"

# # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# values = "random" | "robbyrussell" | "powerlevel9k/powerlevel9k"
ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(wakatime git gitfast composer laravel5 node yarn npm vi-mode sudo macos z zsh-autosuggestions zsh-syntax-highlighting command-not-found)
plugins=(you-should-use git gitfast node yarn npm vi-mode sudo macos z zsh-autosuggestions zsh-syntax-highlighting)
# plugins=(wakatime git gitfast node yarn npm zsh-vi-mode sudo macos z zsh-autosuggestions zsh-syntax-highlighting)

# load oh-my-zsh
# source $ZSH/oh-my-zsh.sh

# ZSH autosuggenstion configuration (load after oh-my-zsh)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan,bold,underline"

# bindkey '^I' autosuggest-accept
# ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(buffer-empty bracketed-paste accept-line push-line-or-edit)
# ZSH_AUTOSUGGEST_STRATEGY=(history completion)
# ZSH_AUTOSUGGEST_USE_ASYNC="true"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim' # or mvim
fi



# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# Load custom aliases
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# load .profile file
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

# Now we can also use Shift-Tab in menu-completion
bindkey '^[[Z' reverse-menu-complete

# Use Cmd-l to clear the screen (iTerm map)
bindkey '^[clear' clear-screen

# NVim Gruvbox Theme
source "$HOME/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# uncomment to use Ruby 3
# export PATH="/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
# export PATH="/usr/local/opt/ruby/bin:$PATH"

export PATH=~/bin:~/.composer/vendor/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)

# Enable ls colors
export CLICOLOR=1
export LS_COLORS='rs=0:no=00:mi=00:mh=00:ln=01;36:or=01;31:di=01;34:ow=04;01;34:st=34:tw=04;34:pi=01;33:so=01;33:do=01;33:bd=01;33:cd=01;33:su=01;35:sg=01;35:ca=01;35:ex=01;32:'

# FZF Settings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

# export BAT_THEME="Dracula"

# Load ZSH Syntac Highlighting at the end
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=$(brew --prefix)/share/zsh-syntax-highlighting/highlighters

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk@11/include"

# initialize rbenv if available
if (( $+commands[rbenv] ))
then
  eval "$(rbenv init - zsh)"
else
  echo "no luck! no rbenv :("
fi


if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# pnpm
export PNPM_HOME="/Users/yassine/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
#
# # NVM, Wants to be at the botom like every god damn package
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# date +%s%N
TERM=xterm-256color
export PATH="${HOME}/.pyenv/shims:${PATH}"

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

echo ".zshrc loaded"