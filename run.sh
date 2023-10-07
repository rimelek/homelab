#!/usr/bin/env bash

ansible-playbook \
  -i inventory.yml \
  --ask-become-pass \
  "$@"