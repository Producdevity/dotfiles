if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=~/bin:~/.composer/vendor/bin:$PATH

echo ".bash_profile loaded"
