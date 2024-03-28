# dotfiles
Collection of personal dotfiles

## Prerequisites
[GNU stow](https://www.gnu.org/software/stow/)

## Stowing
Individual package can be stowed using `stow --target=<HOME_DIR> <package_name>`
For example;
```bash
stow --target=/home/fr0zty tmux
```

For stowing all packages the following can be used.

```bash
stow --target=/home/fr0zty */
```

> [!NOTE]
Using `*` instead of `*/` will stow everything in the repo, including README, LICENSE etc.
