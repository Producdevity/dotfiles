# Dotfiles

__The README is currently being developed and improved upon. While it is relatively easy to understand, there is still useful information to be found within it.__

This repository contains my personal configuration files for various tools and applications I use on my Mac. These files are meant to be used with zsh, bash, vim, neovim, tmux, and other command-line tools.



## Installation

1. Clone this repository to your home directory using the following command:

Use Git or checkout with SVN using the web URL.
`git clone https://github.com/YassineGherbi/dotfiles.git ~/.dotfiles`

Use a password-protected SSH key.
`git clone git@github.com:YassineGherbi/dotfiles.git ~/.dotfiles`

Work fast with our official CLI. [https://cli.github.com/](Learn more).
`gh repo clone YassineGherbi/dotfiles ~/.dotfiles`


2. Create a symlink from each configuration file in this repository to your local configuration directory. For example, to link the `.zshrc` file:

`ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc`


Repeat this step for each configuration file you want to use.

3. Install homebrew if you haven't already:

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`


4. Install homebrew packages and Mac App Store apps using the following command:

`brew bundle install`

The `Brewfile` contains a list of homebrew packages and Mac App Store apps I use on my Mac. If you don't want to install a certain package or app, you can simply remove it from the `Brewfile`. If you want to install a new package or app, you can add it to the `Brewfile` and run `brew bundle install` again.

5. To install Mac App Store apps, you will need to sign in to the Mac App Store using the `mas` command-line tool. Once you have signed in, you can install Mac App Store apps using the following command:

`mas install APP_ID`

Replace `APP_ID` with the ID of the app you want to install. You can find the ID by searching for the app in the Mac App Store and looking at the URL. The ID is the number that appears after `id`.



## Configuration Files (Work in Progress. I would skip over this for now)

### bootstrap

- `config/.config/bootstrap`: This file I am working on to do most of the above steps for you, I wouldn't run it for now, or do. Let me know how it went :)

### zsh

- `.zshrc`: This file contains my configuration for zsh, including plugins, aliases, and environment variables.

### bash

- `bash/.bashrc`: This file contains my configuration for bash, including a few helper functions and environment variables. (most are found in `.zshrc`)
- `bash/.bash_aliases`: This file contains aliases for various commands.
- `bash/.bash_profile`: This file just sources `.bashrc` so things don't break.

### vim

- `.vimrc`: This file contains my configuration for vim, including plugins and settings.

### neovim

- `config/.config/nvim/init.vim`: This file contains my configuration for neovim, including plugins and settings.

### tmux

- `tmux/.tmux.conf`: This file contains my configuration for tmux, including settings and keybindings.
- `tmux/.tmux.powerlinerc`: This file contains my configuration for tmux-powerline, including settings and keybindings.

### git

- `config/.config/git/.gitconfig`: This file contains my git configuration. It is sourced by the default `.gitconfig` file.
- `config/.config/git/.gitignore_global`: This file contains things like `.DS_Store` and `.idea`, files I don't want to track by git.

### homebrew

- `config/Brewfile`: This file contains a list of homebrew packages and applications I use on my Mac. You can install them by running the following command:

`brew bundle install`


### glow

- `general/glow.yml`: This file contains the configuration on how to render your markdown files using glow. 

To run `glow` with this configuration, run the following command:

`glow --config=~/dotfiles/general/glow.yml README.md`

or move/link the file to `~/Library/Preferences /glow/glow. yml` to use it as its default configuration.

You can install it by running the following command:

`brew bundle install` or `brew install glow` to install it separately 



## License

This project is licensed under the **MIT License**. See the [https://opensource.org/license/mit/](LICENSE) file for details.



## Credits

Some configuration files are based on or inspired by other dotfiles repositories, including;
- [Wincent's dotfiles](https://github.com/wincent/wincent) for awesome VIM content and inspiration for a great Mac based workflow
- [The Primeagen's dotfiles](https://github.com/ThePrimeagen/.dotfiles) highly recommended if you like Coconut Oil or Rust. Don't ask, just [https://www.twitch.tv/theprimeagen/clip/ConcernedZanyTapirMVGame-NK6uS63e5Gb5tu4f](watch).
