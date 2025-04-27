# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

Upgraded to [vDotAstron](https://github.com/Veha0001/vDotAstron)

# Features

- Pre-configured LazyVim setup for Termux.
- Includes popular plugins and tools.
- Lightweight and easy to install.

## Termux

### Install Required Packages

Run the following command to install the necessary packages in Termux:

```bash
apt update && apt upgrade
apt install termux-api python neovim git nodejs-lts ripgrep ruff luarocks lua-language-server fzf clang termux-tools lazygit
```

### Termux clipboards

For get clipboards from vim to the device.
You need to install **Termux:API** app from **Github** or **F-Dorid**.

> [!NOTE]
> No need to install **Termux:API** for **Termux Play Store**.

### Install LazyVim

Back up your existing Neovim configuration and clone this repository to your Neovim config directory:

```bash
mv ~/.config/nvim ~/.config/nvim.bak
git clone https://github.com/Veha0001/LazyVimStar ~/.config/nvim
```

---

# Update Problem

- [The problem with Mason / Lsp](https://www.reddit.com/r/neovim/comments/1b4v9mq/the_problem_with_mason_lsp/?tl=it)

```bash
termux-fix-shebang ~/.local/share/nvim/mason/bin/your_lsp
```

> [!NOTE]
> Ensure Termux is updated by running apt update and apt upgrade before installing packages.
>
> If you encounter any issues during setup, verify that your installed packages match the requirements of LazyVim.
>
> For additional customization and plugin configurations, refer to the files in ~/.config/nvim.
