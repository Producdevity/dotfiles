#!/bin/bash

# WARNING: This script can potentially remove important files.
# Use at your own risk and ensure you have backups of important data.

echo -e "Starting the Microsoft clean-up process... \n"

echo -e "\033[1;31mWARNING: This script can potentially remove important files.\033[0m"
echo -e "\033[1;31mUse at your own risk and ensure you have backups of important data.\033[0m \n\n"

read -r -p "Type 'vscode' backwards to proceed: "

if [[ $REPLY != "edocsv" ]]; then
  echo
  echo -e "\033[3;33mStop it.\033[0m"

  for i in {1..10}; do
    printf '.'
    sleep 0.15
  done
  echo

  echo -e "\033[3;33mGet some help.\033[0m"
  sleep 2

  open 'https://youtu.be/9Deg7VrpHbM?si=33Pj8PGJkp8fxrYE'
  exit 1
fi

#echo in green bold text a funny message that we will continue removing their microsoft bullshit 
echo -e "\033[1;32mContinuing to remove Microsoft bullshit...\033[0m \n"


# Define directories to search for Microsoft-related files
directories=(
  "$HOME/Library/Application Support/Microsoft"
  "$HOME/Library/Saved Application State/com.microsoft.*"
  "$HOME/Library/Caches/com.microsoft.*"
  "/Applications/Microsoft*"
  "$HOME/Library/Preferences/com.microsoft.*"
  "$HOME/Library/Logs/Microsoft*"
  "$HOME/Library/Containers/com.microsoft.*"
)

# Loop through the directories and remove the found items
for dir in "${directories[@]}"; do
  echo "Searching in: $dir"
  if [[ -e $dir ]]; then
    echo -e "\n\n\033[3;33m----------------------------------------------------------------------------------------------\033[0m"
    echo -e "\n\033[3;33m Uncomment the line below to actually perform the deletion, so you can't say it's my fault :)\033[0m \n"
    echo -e "\033[3;33m----------------------------------------------------------------------------------------------\033[0m\n\n"
    # sudo rm -rf "$dir"
    echo "Found: $dir"
  else
    echo "Not found: $dir"
  fi
done

echo -e "\n \033[1;31mRemoved\033[0m \033[1;32mAll\033[0m \033[1;33mMicrosoft\033[0m \033[1;34mBullshit\033[0m \033[1;35mFrom\033[0m \033[1;36mYour\033[0m \033[1;37mSystem\033[0m"

sleep 3

open https://neovim.io

