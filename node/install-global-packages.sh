#!/bin/bash

npm_packages=(
  "yarn"
  "pnpm"
)

yarn_packages=(
  "typescript"
  "typescript-language-server"
  "neovim"
)

pnpm_packages=(
  "eas-cli"
  "neovim"
)

echo "Installing global NPM packages..."
for package in "${npm_packages[@]}"; do
    npm install -g "$package"
done

echo "Installing global Yarn packages..."
for package in "${yarn_packages[@]}"; do
    yarn global add "$package"
done

echo "Installing global PNPM packages..."
for package in "${pnpm_packages[@]}"; do
    pnpm add -g "$package"
done

echo "🚀Installation of global packages complete."
