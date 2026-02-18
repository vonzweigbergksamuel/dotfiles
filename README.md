# Dotfiles

Personal dotfiles managed with GNU Stow for easy installation and management.

## About GNU Stow

GNU Stow is a symlink farm manager that creates symlinks to files in a directory tree. It's perfect for managing dotfiles because it:

- Creates clean symlinks from your home directory to the dotfiles repository
- Allows easy installation/removal of configuration packages
- Maintains a clean home directory structure
- Supports selective installation of specific tools

## Repository Contents

### Shell
- **`.zshrc`** – Zsh config with Powerlevel10k, autosuggestions, and aliases
- **`.p10k.zsh`** – Powerlevel10k theme

### Git & SSH
- **`.gitconfig`** – Git settings, aliases, editor, LFS
- **`.ssh/config`** – SSH client config

### Editors & Terminal
- **`.config/nvim/`** – Neovim config (LazyVim) with plugins (Luasnip, Pyright, Hardtime, Snacks) and some useful snippets
- **`.config/zed/settings.json`** – Zed editor settings
- **`.config/ghostty/config`** – Ghostty terminal (Catppuccin, JetBrains Mono)

## Installation

1. Clone the repo:
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

4. Core deps:
   ```bash
   brew install zsh git eza zoxide
   ```

5. Zsh extras:
   ```bash
   brew install zsh-autosuggestions zsh-syntax-highlighting
   brew install romkatv/powerlevel10k/powerlevel10k
   ```

6. Optional: Ghostty, Neovim, Zed:
   ```bash
   brew install --cask ghostty
   brew install neovim
   brew install --cask zed
   ```

7. Reload shell:
   ```bash
   source ~/.zshrc
   ```

## Usage

- **Stow a package**: `stow package-name`
- **Unstow**: `stow -D package-name`
- **Restow**: `stow -R package-name`

## Requirements

- GNU Stow
- Zsh, Powerlevel10k, eza, zoxide
- Optional: Ghostty, Neovim, Zed
