#!/usr/bin/env nix-shell
#! nix-shell -i bash
#! nix-shell -p sops
#! nix-shell -p age
#! nix-shell -I https://github.com/NixOS/nixpkgs/archive/refs/tags/23.05.tar.gz

current_dir="$(cd "$(dirname "$0")" && pwd)"
export HOMELAB_PROJECT_ROOT="$current_dir"

source "$HOMELAB_PROJECT_ROOT/config.sh"

export SOPS_AGE_RECIPIENTS="$(age-keygen -y < $SOPS_AGE_KEY_FILE)"

sops "$@"
