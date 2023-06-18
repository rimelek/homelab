if [ "${SSH_AGENT_PID:-}" != "" ] && [ -f ~/.ssh/ansible ]; then
  ssh-add ~/.ssh/ansible
fi

source ${HOMELAB_ENV:-venv}/bin/activate




