# Set up the prompt

# autoload -Uz promptinit
# promptinit
# prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
# bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


export TERM=xterm-256color

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
#
# # Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'
#
#  # Set up the prompt (with git branch name)
setopt PROMPT_SUBST
# PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} > '
PROMPT='%F{208}%1~%f%F{red}${vcs_info_msg_0_}%f> '

# PROMPT="%F{208}%n%f@%F{208}%n%f(%1~) $ "


alias ..="cd .."
alias l="ls -la --color=auto"
alias ll="ls -l --color=auto"

alias gs="git status"
alias gaa="git add --all"
alias gcm="git commit -m"
alias gpo="git push origin"
alias gc="git clone"

alias open="pcmanfm"

alias obs="LIBGL_ALWAYS_SOFTWARE=1 obs"

# shortcut to restore my g512 keyboard backlight preference
alias led="g810-led -a ffffff && g810-led -p ~/dotfiles/g810-led/enlezlab-vim"

alias cb="feh --bg-fill"

# Activate external display
alias exton="xrandr --auto --output VGA-1 --mode 1920x1080 --right-of LVDS-1 && feh --bg-fill ~/Pictures/default.jpg"
# Deactivate external display
alias extoff="xrandr --output VGA-1 --off"


# Go related
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export PATH=$PATH:/usr/local/go/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
