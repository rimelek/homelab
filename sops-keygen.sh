#!/usr/bin/env nix-shell
#! nix-shell -i bash
#! nix-shell -p age
#! nix-shell -I https://github.com/NixOS/nixpkgs/archive/refs/tags/23.05.tar.gz

current_dir="$(cd "$(dirname "$0")" && pwd)"
export HOMELAB_PROJECT_ROOT="$current_dir"

source "$HOMELAB_PROJECT_ROOT/config.sh"

parent_dir="$(dirname "$SOPS_AGE_KEY_FILE")"

if [[ ! -e "$parent_dir" ]]; then
  mkdir -p "$parent_dir"
fi

if [[ ! -e "$SOPS_AGE_KEY_FILE" ]]; then
  age-keygen -o "$SOPS_AGE_KEY_FILE"
fi

echo "The private key file is at $SOPS_AGE_KEY_FILE"