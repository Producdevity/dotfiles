# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/bash_profile.pre.bash"
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=~/bin:~/.composer/vendor/bin:$PATH

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/bash_profile.post.bash"
