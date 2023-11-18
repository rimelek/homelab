# HOMELAB variables
export HOMELAB_VAR_DIR="${HOMELAB_PROJECT_ROOT:-.}/var"

# SOPS variables
export SOPS_AGE_KEY_FILE="$HOMELAB_VAR_DIR/age/key"

# Ansible variables
export ANSIBLE_SOPS_AGE_KEYFILE="$SOPS_AGE_KEY_FILE"
