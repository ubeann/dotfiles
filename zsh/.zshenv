# --------------------------------------
# [Zsh Configuration Directory]
# --------------------------------------
# Set ZDOTDIR to specify the directory for Zsh configuration files.
# This allows relocating all Zsh configuration files (e.g., .zshrc, .zshenv) to ~/.config/zsh.
export ZDOTDIR="$HOME/.config/zsh"

# --------------------------------------
# [Oh-My-Zsh Configuration]
# --------------------------------------
# Specify the installation path for Oh-My-Zsh.
export ZSH="$HOME/.oh-my-zsh"

# --------------------------------------
# [PATH Configuration]
# --------------------------------------
# Extend the PATH environment variable to include custom paths.

# Spicetify (Spotify customization tool)
export PATH="$HOME/.spicetify:$PATH"

# Go programming language binaries
export GOPATH="$HOME/go"
export PATH="$(go env GOPATH)/bin:$PATH"

# Composer (PHP dependency manager) binaries
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Herd-Lite binaries (local PHP and PHP utilities)
export PATH="$HOME/.config/herd-lite/bin:$PATH"

# Bun (JavaScript runtime and package manager)
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# --------------------------------------
# [Localization and Language Settings]
# --------------------------------------
# Set the language for applications and command-line tools.
export LANG="en_US.UTF-8"

# --------------------------------------
# [Tool-Specific Configuration]
# --------------------------------------
# Starship (cross-shell prompt) configuration path
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

# PHP configuration (include additional ini files)
export PHP_INI_SCAN_DIR="$HOME/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

# Bat (cat alternative) theme
export BAT_THEME="OneHalfDark"
