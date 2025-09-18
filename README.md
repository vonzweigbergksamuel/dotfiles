# Dotfiles

Personal dotfiles managed with GNU Stow for easy installation and management.

## About GNU Stow

GNU Stow is a symlink farm manager that creates symlinks to files in a directory tree. It's perfect for managing dotfiles because it:

- Creates clean symlinks from your home directory to the dotfiles repository
- Allows easy installation/removal of configuration packages
- Maintains a clean home directory structure
- Supports selective installation of specific tools

## Repository Contents

### Shell Configuration
- **`.zshrc`** - Zsh configuration with Powerlevel10k, autosuggestions, and useful aliases
- **`.p10k.zsh`** - Powerlevel10k theme configuration

### Git Configuration
- **`.gitconfig`** - Git settings with aliases, editor preferences, and LFS configuration

### Terminal & Applications
- **`.config/ghostty/config`** - Ghostty terminal configuration (Catppuccin theme, JetBrains Mono font)
- **`.config/karabiner/karabiner.json`** - Karabiner-Elements key remapping (Caps Lock → Hyper key)

### SSH Configuration
- **`.ssh/config`** - SSH client configuration

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
   cd ~/.dotfiles
   ```

2. Install GNU Stow:
   ```bash
   brew install stow
   ```

3. Create symlinks with Stow:
   ```bash
   stow .
   ```

4. Install the required software packages:
   ```bash
   brew install zsh git eza zoxide
   ```

5. Install additional tools mentioned in your configs:
   ```bash
   # For zsh plugins
   brew install zsh-autosuggestions zsh-syntax-highlighting
   
   # For Powerlevel10k theme
   brew install romkatv/powerlevel10k/powerlevel10k
   
   # For Ghostty terminal
   brew install --cask ghostty
   ```

6. Restart your terminal or source your new zsh config:
   ```bash
   source ~/.zshrc
   ```

## Usage

- **Install a package**: `stow package-name`
- **Remove a package**: `stow -D package-name`
- **Restow (refresh)**: `stow -R package-name`

## Requirements

- GNU Stow
- Zsh with Powerlevel10k
- eza (better ls)
- zoxide (better cd)
- Ghostty terminal
- Karabiner-Elements (macOS)