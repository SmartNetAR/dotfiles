ZSH_DISABLE_COMPFIX=true

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
[[ "$(uname -s)" == "Darwin" ]] && plugins=(git) || plugins=(git z)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# gulp
alias guw='gulp watch-dev-files'
alias gubf='gulp build --feature $1'

alias af='alias | grep $1'

alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

alias rm._="find . -type f -name '._*' -delete"

alias lzd='lazydocker'

# Git aliases
alias gbr='git branch | cat'
alias gbrf='git branch | cat | grep $1'
alias gignm='echo ".DS_Store\nnode_modules\n.env\ncoverage" > .gitignore'

# alias https://undefined.sh/comandos-alias-para-la-terminal/
# alias rm="trash"

# nvm aliases
alias nvmu="nvm use"
alias nvmx="nvm use 16"
alias nvmy="nvm use 18"
alias nvmz="nvm use 20"
alias nvmd='nvm alias default $1'

# npm and yarn aliases
alias npmd="npm run dev"
alias npms="npm start"
alias yarnd="yarn run dev"
alias yarns="yarn start"
alias yarnsv="yarn serve"

alias ngs="ng serve"

# pyenv aliases
alias pyenv="source ./env/bin/activate"
alias pyd="uvicorn src.main:app --reload"

# makefile
alias maked="make dev"

# docker
alias ddown="docker-compose down"

# utils aliases
alias sshadd="ssh-add -K ~/.ssh/id_rsa"
alias nocors="open --new -a 'Google Chrome' --args --disable-web-security --allow-running-insecure-content --user-data-dir=/tmp/$USER --test-type"
alias simu="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
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


# Syntax Highlighting
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh #macOs
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Find a process given a port
findport() {
  sudo lsof -n -i :$1 | egrep "LISTEN|PID"
}

# Find a process given a name
findproc() {
  ps -fa | egrep "$1|PID"
}

# Curl
curlj() {
  if [ -n "$1" ]
  then
    curl $1 | json_pp
  else
    echo "enter [url]"
    echo "curlj localhost:5000"
  fi
}

curlpost() {
  if [ -n "$2" ]
  then
    curl -X POST -H "Content-Type: application/json" -d $1 $2
  else
    echo "enter [jsonData] & [url]"
    echo "curlpost '{\"email\": \"username@mail.com\"}' localhost:5000"
  fi
}

curljpost() {
  if [ -n "$2" ]
  then
    curl -X POST -H "Content-Type: application/json" -d $1 $2 | json_pp
  else
    echo "enter [jsonData] & [url]"
    echo "curljpost '{\"email\": \"username@mail.com\"}' localhost:5000"
  fi
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

keep_current_path() {
  printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"
}
precmd_functions+=(keep_current_path)

# source /root/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /root/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/leo/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pnpm
export PNPM_HOME="/home/leo/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end