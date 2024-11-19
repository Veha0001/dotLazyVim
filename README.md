# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

---

# Features
- Pre-configured LazyVim setup for Termux.
- Includes popular plugins and tools.
- Lightweight and easy to install.

## Termux 

### Install Required Packages

Run the following command to install the necessary packages in Termux:
```bash
apt update && apt upgrade
apt install termux-api python neovim git nodejs-lts ripgrep ruff luarocks lua-language-server fzf clang 
```
### Install LazyVim
Back up your existing Neovim configuration and clone this repository to your Neovim config directory:
```bash
mv ~/.config/nvim ~/.config/nvim.bak
git clone https://github.com/Veha0001/LazyVimStar ~/.config/nvim
```

---

# Update Problems
- [x] `emmet` work not like vscode, tested with `!`.
- [x] `mason` still not runing well.
- [x] `others?` idk.

> [!NOTE]
> Ensure Termux is updated by running apt update and apt upgrade before installing packages.
>
> If you encounter any issues during setup, verify that your installed packages match the requirements of LazyVim.
>
> For additional customization and plugin configurations, refer to the files in ~/.config/nvim.
