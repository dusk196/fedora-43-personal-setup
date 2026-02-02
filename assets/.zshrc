#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

### --- History ---
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Better history behavior
setopt appendhistory
setopt sharehistory
setopt inc_append_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt autocd              # Nerd feature: type a directory name to 'cd' into it

### --- Completion & Navigation ---
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # Case-insensitive completion
zstyle ':completion:*' menu select                  # Visual menu for TAB completion

### --- Key bindings ---
bindkey -e

### --- Key Bindings for 104-Key Layout ---

# Use 'terminfo' to grab the correct codes for your terminal
bindkey  "^[[H"     beginning-of-line      # Home
bindkey  "^[[F"     end-of-line            # End
bindkey  "^[[3~"    delete-char            # Del
bindkey  "^[[2~"    overwrite-mode         # Ins
bindkey  "^[[5~"    beginning-of-history   # PageUp
bindkey  "^[[6~"    end-of-history         # PageDown

# The 'Up' and 'Down' arrows you already have
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

### --- Plugins (Fedora Official Paths) ---
# Sourcing from /usr/share is cleaner and faster
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Custom style for suggestions (the "8" is a nice subtle gray)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"

### --- Nerd Aliases ---
alias ls='ls --color=auto'
alias ll='ls -lah'
alias grep='grep --color=auto'
alias ..='cd ..'
alias v='nvim'                   # Because typing 4 letters for an editor is too many -_-

### --- Starship Prompt ---
eval "$(starship init zsh)"

### --- MISE ---
eval "$(~/.local/bin/mise activate zsh)"

### --- BUN ---

# bun completions
[ -s "/home/sayantan/.bun/_bun" ] && source "/home/sayantan/.bun/_bun" # Replace "sayantan" with your/my future username

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

### --- Fastfetch (Always last) ---
# Only run in interactive shells (prevents issues with scripts)
[[ -o interactive ]] && fastfetch

### --- Custom Aliases ---

# Shortcut to edit this file and reload it automatically
alias zshconf='gnome-text-editor ~/.zshrc && source ~/.zshrc'
alias starconf='gnome-text-editor ~/.config/starship.toml && source ~/.zshrc'

# Shortcut to update and upgrade
alias up='sudo dnf upgrade --refresh && bun upgrade'                                      # Because updating with a big command is too much
alias update='sudo dnf upgrade --refresh && bun upgrade'                                  # And why not?
alias upgrade='sudo dnf upgrade --refresh && sudo dnf autoremove && sudo dnf clean all'   # Why these commands are so HUGE?


# opencode
export PATH=/home/sayantan/.opencode/bin:$PATH
