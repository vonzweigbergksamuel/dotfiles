# Dotfiles

Personal dotfiles managed with GNU Stow for easy installation and management.

## About GNU Stow

GNU Stow is a symlink farm manager that creates symlinks to files in a directory tree. It's perfect for managing dotfiles because it:

- Creates clean symlinks from your home directory to the dotfiles repository
- Allows easy installation/removal of configuration packages
- Maintains a clean home directory structure
- Supports selective installation of specific tools

## Repository Contents

Each top-level folder is a Stow package:

| Package      | Symlinks                  |
| ------------ | ------------------------- |
| `zshrc/`     | `.zshrc`                  |
| `p10k/`      | `.p10k.zsh`               |
| `gitconfig/` | `.gitconfig`              |
| `ssh/`       | `.ssh/config`             |
| `nvim/`      | `.config/nvim/` (LazyVim) |
| `ghostty/`   | `.config/ghostty/config`  |

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

3. Create symlinks with Stow (stow each package separately for better control):

   ```bash
   stow zshrc p10k gitconfig ssh nvim ghostty
   ```

   Or stow individual packages as needed, e.g.:

   ```bash
   stow nvim
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

- **Stow a package**: `stow nvim`
- **Unstow**: `stow -D nvim`
- **Restow**: `stow -R nvim`

## Requirements

- GNU Stow
- Zsh, Powerlevel10k, eza, zoxide
- Optional: Ghostty, Neovim, Zed
