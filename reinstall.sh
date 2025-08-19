#!/usr/bin/env bash
set -e

echo "[*] Reinstalling Vim config..."
bash "$(dirname "$0")/uninstall.sh"
bash "$(dirname "$0")/install.sh"
