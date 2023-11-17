#!/usr/bin/env bash

# Ask the user for a password
read -r -s -p "Enter your password: " USER_PASSWORD
echo

ansible-playbook ./local.yml -K -e "user_pass=$USER_PASSWORD"
