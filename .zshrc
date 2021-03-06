# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

## set terminal color by aic
export TERM='xterm-256color'

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/aic/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

## custom by aic
POWERLEVEL9K_MODE="nerdfont-complete"
## end aic

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

## aic
export NVM_LAZY_LOAD=true
plugins=(
  git
  zsh-nvm
  zsh-autosuggestions
)

## autoload feature
autoload zmv

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export DEFAULT_USER="$USER"

## alias
alias se="sudo gedit"
alias upmirror="sudo pacman-mirrors --fasttrack && sudo pacman -Syyu"
alias s="systemctl"
alias kl="kubectl"
alias rundoc="systemctl start docker"
alias topdoc="systemctl stop docker"
alias doc="docker $1"
alias docc="docker-compose $1"
alias rundro="react-native run-android"
alias abundle='rm android/app/src/main/assets/index.android.bundle && react-native bundle --platform android --dev false --entry-file index.js --bundle-output android/app/src/main/assets/index.android.bundle --assets-dest android/app/src/main/res/ && rm -rf android/app/src/main/res/drawable-xxxhdpi android/app/src/main/res/drawable-xxhdpi android/app/src/main/res/drawable-xhdpi android/app/src/main/res/drawable-mdpi android/app/src/main/res/drawable-hdpi && cd android && ./gradlew assembleRelease'
alias fun="flutter run"
alias lcd="intel-virtual-output"
alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"
alias updonk="sudo pacman -Syyu && yay -Syyu --aur"
alias py="python $1"
alias py2="python2 $1"
alias pas="php artisan serve $1"
alias pam="php artisan migrate:reset && php artisan migrate && php artisan db:seed"
alias sym="symfony $1"
alias kup="kubectl proxy"
alias compdf="ps2pdf -dPDFSETTINGS=/screen $1 $2"
## alias ssh
alias sshlab="ssh timit@171.16.0.36"
#alias sshlab="ssh timit@36.66.190.197"
alias sshpbg="ssh simpatda@192.168.20.20"
alias sshvbox="ssh timit@192.168.56.105"
## VPN Telkom
alias vpntelkom="sudo openconnect --protocol=gp --usergroup=portal global.telkom.co.id -u 830015"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/aic/.sdkman"
[[ -s "/home/aic/.sdkman/bin/sdkman-init.sh" ]] && source "/home/aic/.sdkman/bin/sdkman-init.sh"
[[ /home/linuxbrew/.linuxbrew/bin/kubectl ]] && source <(kubectl completion zsh)

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
