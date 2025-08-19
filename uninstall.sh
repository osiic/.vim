#!/usr/bin/env bash
set -e

echo "[*] Uninstalling Vim config..."

rm -f "$HOME/.vimrc"

if [ -f "$HOME/.vimrc.backup" ]; then
  echo "[*] Restoring backup..."
  mv "$HOME/.vimrc.backup" "$HOME/.vimrc"
fi

echo "[✓] Vim config uninstalled."
