#!/usr/bin/env bash

if command -v "ansible-playbook" &> /dev/null; then
  if command -v "apt" &> /dev/null; then
    ./ansible-install-apt.sh
  fi
fi

# Ask the user for a password
# read -r -s -p "Enter your password: " USER_PASSWORD
# echo

ansible-playbook ./local.yml -K -e "user_pass=$USER_PASSWORD"
