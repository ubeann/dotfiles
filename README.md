# **Dotfiles Configuration**

A collection of configuration files (dotfiles) to set up and personalize your development environment.

## **Installation**

### **Requirements**
Ensure the following tools are installed on your machine before proceeding:
- [GNU Stow](https://www.gnu.org/software/stow/) – For managing symlinks.
- A shell environment (e.g., Zsh with Oh-My-Zsh is recommended).

### **Install Dotfiles**
1. Clone the repository to your home directory:
   ```bash
    git clone https://github.com/your-username/dotfiles.git ~/.dotfiles
   ```
2. Navigate to the dotfiles directory:
   ```bash
    cd ~/.dotfiles
   ```
3. Use `stow` to symlink the desired configuration files:
   ```bash
    stow zsh
    stow vim
    stow git
   ```
   > **Tip:** Use `stow .` to symlink all configurations at once.

### **Directory Structure**
```plaintext
.dotfiles/
├── zsh/               # Zsh configurations
│   ├── .zshrc         # Main Zsh configuration
│   ├── .zshenv        # Environment variables
├── git/               # Git configurations
│   └── .gitconfig     # Git global configuration
├── nvim/              # Neovim configurations
│   └── init.vim       # Neovim init file
└── ...                # Other configurations
```

## **Uninstalling**

To remove symlinks created by `stow`, use the `-D` (delete) option:
```bash
stow -D zsh
stow -D vim
stow -D git
```
> **Tip:** Use `stow -D .` to remove all symlinks at once.

## **Customization**

Feel free to edit any of the configuration files to suit your preferences. Each file is modular and designed for easy modification.

## **Troubleshooting**

- **Symlink errors:** Ensure there are no conflicting files in your home directory before running `stow`. Backup existing files if necessary.
- **Stow not found:** Install GNU Stow using your package manager
    - **macOS:** `brew install stow`
    - **Ubuntu/Debian:** `sudo apt install stow`
    - **Arch Linux::** `sudo pacman -S stow`
    - **Windows:** Install [Cygwin](https://www.cygwin.com/) or [WSL](https://docs.microsoft.com/en-us/windows/wsl/install)

## **Contributing**

Feel free to fork this repository and submit pull requests with improvements or new configurations. Contributions are always welcome!
