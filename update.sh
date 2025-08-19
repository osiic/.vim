#!/usr/bin/env bash
set -e

echo "[*] Updating Vim config..."
cd "$HOME/.vim"
git pull origin main
bash ./install.sh
