# --------------------------------------
# [Oh-My-Zsh Configuration]
# --------------------------------------
# Load Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-dircolors-solarized)

# Enable prompt substitution
setopt prompt_subst

# --------------------------------------
# [Performance Improvements]
# --------------------------------------
# Optimize completion system
if [[ ! -f $HOME/.zcompdump ]]; then
  compinit
else
  compinit -C
fi

# --------------------------------------
# [History Management]
# --------------------------------------
# Configure history
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt append_history        # Append history across sessions
setopt inc_append_history    # Save command immediately
setopt share_history         # Share history across terminals

# Search history with Ctrl+R and Ctrl+S
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward

# --------------------------------------
# [Visual Enhancements]
# --------------------------------------
# Enable Bat for man pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Enable icons in lsd
alias ls='lsd --group-dirs=first --icon=always'
alias ll='lsd -la --group-dirs=first'

# --------------------------------------
# [fzf Enhancements]
# --------------------------------------
# Enable fzf with directory navigation
alias z='zoxide query -l | fzf --preview="ls -la {}" --bind="enter:execute(cd {})+abort"'

# Git integration with fzf
alias flog='git log --oneline --decorate --graph | fzf'
alias gf='git ls-files | fzf --preview "bat --color=always --style=numbers {}"'

# --------------------------------------
# [Aliases & Functions]
# --------------------------------------
# Git shortcuts
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gs='git status'
alias gl='git log --oneline --graph --decorate'
alias gd='git diff'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gpr='git pull --rebase'

# Docker shortcuts
alias dps='docker ps'
alias di='docker images'
alias drun='docker run -it --rm'
alias dstop='docker stop $(docker ps -q)'
alias drm='docker rm $(docker ps -aq)'

# Kubernetes shortcuts
alias kctx='kubectx'
alias kns='kubens'

# --------------------------------------
# [Starship Prompt]
# --------------------------------------
eval "$(starship init zsh)"

# --------------------------------------
# [Productivity Tools]
# --------------------------------------
# Timer function
timer() { echo "Timer started for $1 minutes"; sleep $(( $1 * 60 )); echo "Time's up!"; }

# --------------------------------------
# [Modular Configuration]
# --------------------------------------
# Source additional configurations
for file in ~/config/zsh/.zsh.d/*.zsh; do
  source $file
done

# --------------------------------------
# [System Monitoring]
# --------------------------------------
# Display CPU and memory stats in the terminal title
precmd() {
  print -Pn "\e]0;CPU: $(sysctl -n vm.loadavg | awk '{print $2}') | Mem: $(vm_stat | awk '/Pages free/ {print $NF * 4096 / 1048576}')MB free\a"
}
