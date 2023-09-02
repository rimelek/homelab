#!/usr/bin/env nix-shell
#! nix-shell -i bash
#! nix-shell -p python311
#! nix-shell -p python311Packages.pip
#! nix-shell -p python311Packages.virtualenv
#! nix-shell -I https://github.com/NixOS/nixpkgs/archive/refs/tags/23.05.tar.gz

set -eu -o pipefail

if (( $# == 0 )); then
  >&2 echo "Set the name of the virtual Python environment as the first argument."
  exit 1
fi

env_name="$1"

if [[ ! -d "$env_name" ]]; then
  python3.11 -m virtualenv "$env_name"
fi

source "$env_name/bin/activate"

python3.11 -m pip install -r requirements.txt

