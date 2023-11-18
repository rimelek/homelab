#!/usr/bin/env nix-shell
#! nix-shell -i bash
#! nix-shell -p sops
#! nix-shell -I https://github.com/NixOS/nixpkgs/archive/refs/tags/23.05.tar.gz

source config.sh

ansible-playbook \
  -i inventory.yml \
  "$@"