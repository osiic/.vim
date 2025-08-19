#!/usr/bin/env bash
set -e

echo "[*] Installing Vim config..."

# Install vim if not exists (Ubuntu/Debian)
if ! command -v vim >/dev/null 2>&1; then
  echo "[*] Vim not found. Installing..."
  sudo apt update && sudo apt install -y vim
fi

# Backup old ~/.vimrc if exists
if [ -f "$HOME/.vimrc" ]; then
  echo "[*] Backing up old ~/.vimrc to ~/.vimrc.backup"
  mv "$HOME/.vimrc" "$HOME/.vimrc.backup"
fi

# Symlink ~/.vim/vimrc to ~/.vimrc
ln -sf "$HOME/.vim/vimrc" "$HOME/.vimrc"

echo "[✓] Vim config installed."

