#!/bin/zsh

# Function to switch PHP versions
switch_php() {
  if brew list | grep -q "^php@$1\$"; then
    echo "Switching to PHP $1..."
    brew unlink php
    brew link --overwrite --force "php@$1"
    echo "Switched to PHP $1."
  else
    echo "PHP version $1 is not installed. You can install it using: brew install php@$1"
  fi
}

# Check if a version number is provided
if [ -z "$1" ]; then
  echo "Usage: switch-php version_number"
  echo "Example: switch-php 7.4"
else
  switch_php $1
fi

