# Dotfiles

Personal macOS dotfiles, managed with [GNU Stow](https://www.gnu.org/software/stow/). Each top-level folder is a Stow package that symlinks its files into `~`.

## Packages

| Package      | Symlinks                  | What it is                                     |
| ------------ | ------------------------- | ---------------------------------------------- |
| `zshrc/`     | `.zshrc`                  | Zsh setup (history, completion, tools, PATH)   |
| `starship/`  | `.config/starship.toml`   | Starship prompt                                |
| `gitconfig/` | `.gitconfig`              | Git user, aliases, Cursor as editor            |
| `ssh/`       | `.ssh/config`             | SSH hosts for GitHub and GitLab                |
| `nvim/`      | `.config/nvim/`           | Neovim (LazyVim)                               |
| `ghostty/`   | `.config/ghostty/config`  | Ghostty terminal settings                      |

## What the shell gives you

- **History:** 50 000 lines, shared between terminals; arrow up/down searches history for what you've typed
- **Autosuggestions** from history as you type (`zsh-autosuggestions`)
- **Syntax highlighting** that shows whether a command is valid (`zsh-syntax-highlighting`)
- **`cd`** → [zoxide](https://github.com/ajeetdsouza/zoxide), **`ls`** → [eza](https://eza.rocks) with icons, **`lg`** → lazygit
- **Tab completion** via `compinit` (git, gcloud, Vite+ and more)
- **Prompt:** Starship with directory, git branch, exit code, command duration and clock
- **`killport <port>`** kills whatever is listening on a port

Works the same in Ghostty and Rex, since both run your login shell. Icons need a font with Nerd Font symbols; Rex has them built in.

## Install on a new Mac

1. Install the tools:

   ```bash
   brew install stow git eza zoxide lazygit starship zsh-autosuggestions zsh-syntax-highlighting
   ```

2. Clone the repo:

   ```bash
   git clone git@github.com:vonzweigbergksamuel/dotfiles.git ~/.dotfiles
   cd ~/.dotfiles
   ```

3. Link the packages (move any existing files out of the way first, or Stow will refuse):

   ```bash
   stow zshrc starship gitconfig ssh nvim ghostty
   ```

4. Reload the shell:

   ```bash
   source ~/.zshrc
   ```

Optional: `brew install neovim`, `brew install --cask ghostty gcloud-cli`.

`.zshrc` also sources Vite+ (`~/.config/vite-plus/env`) and adds pnpm, libpq, mysql-client and OpenJDK to PATH when installed.

## Usage

| Task              | Command             |
| ----------------- | ------------------- |
| Link a package    | `stow nvim`         |
| Unlink a package  | `stow -D nvim`      |
| Relink a package  | `stow -R nvim`      |

## Not in git

`cagent/`, `configstore/`, `gcloud/` and `raycast/` live in this folder but are ignored: they hold app state and credentials, not config.
