#!/bin/bash

npm_packages=()

yarn_packages=(
    "typescript"
    "typescript-language-server"
    "neovim"
)

echo "Installing global npm packages..."
for package in "${npm_packages[@]}"; do
    npm install -g "$package"
done

echo "Installing global Yarn packages..."
for package in "${yarn_packages[@]}"; do
    yarn global add "$package"
done

echo "🚀Installation of global packages complete."
