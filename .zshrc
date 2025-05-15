# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export PATH=${PATH}:/Users/hbelmiro/go/bin
export PATH=${PATH}:/Users/hbelmiro/sdk/oc
export PATH=${PATH}:/Applications/kgrep
export PATH=${PATH}:/Users/hbelmiro/dev/hbelmiro/bin
export PATH=${PATH}:/Users/hbelmiro/dev/hbelmiro/private-scripts
export PATH=${PATH}:/Users/hbelmiro/sdk/java/current/Contents/Home/bin
export PATH=${PATH}:/Users/hbelmiro/sdk/maven/apache-maven-3.9.9/bin
export PATH=${PATH}:/Applications/infinispan-cli

export JAVA_HOME=/Users/hbelmiro/sdk/java/current/Contents/Home
export GRAALVM_HOME=/Users/hbelmiro/sdk/graalvm/current/Contents/Home

# DSP
export DSPO_NS=opendatahub
export DSP_NS=kubeflow

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

export BAT_THEME="Visual Studio Dark+"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(git fzf)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.

# alias for podman and docker defined as symbolic links
# ➜  ~ ls -l /usr/local/bin/podman
# lrwxr-xr-x@ 1 root  wheel  20 10 Abr 16:28 /usr/local/bin/podman -> /usr/local/bin/finch
# ➜  ~ ls -l /usr/local/bin/docker
# lrwxr-xr-x@ 1 root  wheel  20 10 Abr 16:28 /usr/local/bin/docker -> /usr/local/bin/finch

alias python=python3

if [[ -t 1 ]]; then
    # If running interactively

    alias byaml="bat -l yaml"
    alias kubectl=kubecolor
    alias k=kubecolor
fi

kdef() {
  kubectl get "$@" -o yaml | yq .
}

kdefb() {
  kubectl get "$@" -o yaml | bat -l yaml
}

# Make "kubecolor" borrow the same completion logic as "kubectl"
compdef kubecolor=kubectl

# Homebrew
export HOMEBREW_NO_ENV_HINTS=true

# Kubecolor customization
NOT_SO_WHITE="251"
export KUBECOLOR_THEME_BASE_INFO="${NOT_SO_WHITE}"
export KUBECOLOR_THEME_TABLE_HEADER="${NOT_SO_WHITE}:bold"

export GPG_TTY=$(tty)

. "$HOME/.local/bin/env"
