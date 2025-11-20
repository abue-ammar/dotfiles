# dotfiles

Personal shell configuration files.

Contents:
- .zshrc — zsh setup (Homebrew, nvm, bun, starship, autocomplete, aliases, history)
- .gitconfig — Git configuration

Small, focused dotfiles to configure my shell and Git.

## Updating dotfiles

When you make a change to `.zshrc` or any tracked config file:

```bash
dot add -A           # stage all changes to tracked files
dot commit -m "describe your change"  # commit the changes
dot push             # push to GitHub
