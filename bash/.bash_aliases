alias mvim='mvim -v'
alias vvim='/usr/bin/vim '
alias vim='nvim '
alias nvimold='nvim -u ~/.config/nvim/init.vim '

alias sudo='sudo '

# some more ls aliases
# alias ls="/usr/local/opt/coreutils/libexec/gnubin/ls --color=auto"
# alias ls="/usr/local/opt/coreutils/libexec/gnubin/ls "
alias ls="gls --color=always --group-directories-first"
alias l='ls -FGlAhp '
alias la='ls -A '
alias ll='ls -alhF '
alias lld='ls -alhF | grep "^d" ' # list only dirs using grep
alias llf='ls -alhF | grep "^-" ' # list only files using grep
alias lsdir='ls -dl */ ' # list only dirs

# List stuff
alias tre='tree -aCL'
alias psgrep='ps -ef | head -1; ps -ef | grep '
alias lssize='du -skh * | sort -h '
alias lssizelargefirst='du -skh * | sort -rh '

# navigate
alias a='alias '
alias B='cd $OLDPWD' # Go back to previous directory
alias b='cd ..'
alias bb='cd ../..'
alias bbb='cd ../../..'
alias bbbb='cd ../../../..'

# Glow docs
alias markdown='glow -s dark '
alias docssbn='glow -s dark ~/Coding/personal/docs/semantic-branch-names.md'
alias docsscm='glow -s dark ~/Coding/personal/docs/semantic-commit-messages.md'

#Reload
alias reloadalias='source ~/.bash_aliases'

#Current stuff
alias vapesites='vim ~/Coding/personal/2022/yes-i-am-old-enough/Website/sites.txt '

#Laravel
alias phpunit='vendor/bin/phpunit '
alias laraclearcache='php artisan cache:clear && php artisan config:clear && php artisan config:cache'
alias larafresh='composer dump-autoload && php artisan cache:clear && php artisan clear-compiled && php artisan optimize && php artisan migrate:refresh --seed'
alias laraquick='composer dump-autoload && php artisan cache:clear && php artisan clear-compiled' #Same as above except without the db refresh
alias larafull='rm -rf vendor && rm -rf node_modules && composer install && npm install && bower install && gulp && php artisan clear-compiled && php artisan optimize && php artisan migrate:refresh --seed'

# PHP
# ARTISAN
alias pa='php artisan'
alias pad='php artisan dump'
alias pam='php artisan migrate'
alias pam='php artisan migrate'
alias pamr='php artisan migrate:refresh'
alias pamrs='php artisan migrate:refresh --seed'
alias pamf='php artisan migrate:fresh'
alias pamfs='php artisan migrate:fresh --seed'
alias pat='php artisan tinker'
alias pas='php artisan serve'
alias pagu='pas & guw'
alias panw='pas & nrw'

#Symfony
alias systop='php bin/console server:stop '
alias systart='php bin/console server:start '
alias systarttest='php bin/console server:start --env=test '
alias sytest='systop; systarttest '
alias sydev='php bin/console server:stop && php bin/console server:start 127.0.0.1:8000'

#Valet
alias va='valet'
alias val='valet link'
alias vas='valet share'
alias vai='valet install'
alias vals='valet install'

#Vim
# alias tags=/usr/local/bin/ctags

#Vim fast-edit
alias .bp='. ~/.bash_profile'
alias .br='. ~/.bashrc'
alias .p='. ~/.profile'
alias .z='. ~/.zshrc'
alias brewrc='vim ~/.config/Brewfile'
alias kittyrc='vim ~/.config/kitty/kitty.conf'
alias nvimdir='cd ~/.config/nvim'
alias nvimrc='vim ~/.config/nvim/init.lua'
alias tmuxls='tmux ls && read tmux_session && tmux attach -t ${tmux_session:-default} || tmux new -s ${tmux_session:-default}'
alias tmuxrc='vim ~/.tmux.conf'
alias v='vim .'
alias vimba='vim ~/.bash_aliases'
alias vimbp='vim ~/.bash_profile'
alias vimbr='vim ~/.bashrc'
alias vimh='sudo vim /etc/hosts'
alias vimirc='vim ~/.ideavimrc'
alias vimp='vim ~/.profile'
alias vimrc='vim ~/.vim/.vimrc'
alias vimssh='vim ~/.ssh/config'
alias vimz='vim ~/.zshrc'

#Git
alias delete_ds_store='find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch '
alias ga.='git add .'
alias ga='git add '
alias gb='git branch'
alias gc='git commit -m'
alias gch='git checkout'
alias gd='git diff'
alias glg1="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all "
alias glg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all "
alias gp='git push'
alias gpo='git push origin'
alias grv='git remote -v'
alias gs='git status | cowsay | lolcat '
alias gst='git status'
alias gtree='git log --oneline --graph --decorate --all '
alias gtreepretty='git log --pretty=oneline --graph --decorate --all '
alias wip="git add . && git commit -m 'chore: work in progress'"


# Git Dotfiles
alias gitdf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias gitd='gitdf '
alias gitda='gitdf add'
alias gitds='gitdf status'
alias gitdd='gitdf diff'
alias gitdc='gitdf commit -m'
alias dotfiles='cd $HOME/.dotfiles'

# Git rebase
alias grf='git fetch && git rebase origin/master'
alias grp='git push --force-with-lease'
alias ggrpush='ggpush --force-with-lease'

# Python
alias python='python3 '
alias pip='pip3 '

#Node
alias nm='nodemon server'
alias nrt='npm run test'
alias nt='npm run test'
alias nrs='npm run start'
alias nrb='npm run build'
alias nrw='npm run watch'
alias nrd='npm run dev'
alias ni='npm install'
alias nis='npm install --save'
alias nisd='npm install --save-dev'
alias npmig='sudo npm install -g'

alias p='pnpm '

alias y='yarn'
alias ys='y start'
alias ya='y add'
alias yga='y global add'

alias lslock='ll | grep "lock"'

# Update package managers
alias updateyarn='curl --compressed -o- -L https://yarnpkg.com/install.sh | bash '
alias updatepnpm='pnpm add -g pnpm'

alias setyarnregistry="yarn config set registry https://registry.yarnpkg.com"
alias setnpmregistry="npm config set registry https://registry.npmjs.org"

# Handy stuff
alias rm='rm -i '

# Composer
alias co='composer'
alias coda='composer dump-autoload'
alias cou='composer update'
alias cor='composer remove'

# React Native
alias rndo='rndebugger-open '
alias rdt='react-devtools '
alias lsid='xcrun simctl list devices '
alias rnfixglob='cd ./node_modules/react-native/third-party/glog-0.3.5 && ll && ./configure && make && make install && bbbb'
# alias rnfixglob2="cd ./node_modules/react-native && scripts/ios-install-third-party.sh && cd third-party && cd $(ls | grep 'glog' | awk '{print $1}') && ./configure "

alias rn='react-native '
alias rns='react-native start '
alias rnl='react-native link '
alias rnlink='react-native link '

alias rnand='react-native run-android '
alias rnios='react-native run-ios '
alias rnandroid='react-native run-android'
alias rnios4s='react-native run-ios --simulator "iPhone 4s" '
alias rnios5='react-native run-ios --simulator "iPhone 5" '
alias rnios5s='react-native run-ios --simulator "iPhone 5s" '
alias rnios6='react-native run-ios --simulator "iPhone 6" '
alias rnios6s='react-native run-ios --simulator "iPhone 6s" '
alias rnios7='react-native run-ios --simulator "iPhone 7" '
alias rnios7p='react-native run-ios --simulator "iPhone 7 Plus" '
alias rnios8='react-native run-ios --simulator "iPhone 8" '
alias rnios8p='react-native run-ios --simulator "iPhone 8 Plus" '
alias rniosse='react-native run-ios --simulator "iPhone SE" '
alias rniosx='react-native run-ios --simulator "iPhone X" '
alias rniosxs='react-native run-ios --simulator "iPhone XS" '
alias rniosxsm='react-native run-ios --simulator "iPhone XS Max" '
alias rniosxr='react-native run-ios --simulator "iPhone XR" '

alias rnland='react-native log-android'
alias rnlios='react-native log-ios'

alias rnclean='rm -rf $TMPDIR/react-*; rm -rf $TMPDIR/haste-*; rm -rf $TMPDIR/metro-*; watchman watch-del-all '

alias xcodeCleanDerivedData='rm -rf ~/Library/Developer/Xcode/DerivedData/* '

alias ws='wml start '

#Speedy
alias getlocalip='ifconfig | grep inet\ | tail -1 | cut -d " " -f 2 '
alias cdc='pwd | pbcopy' # copy pwd to clipboard
alias cdp='cd $(pbpaste)' # navigate to clipboard path
alias dh='dirs -v ' # show directory history
alias findalias='alias | grep '
alias ducks='du -chsk * | sort -rn  | head -11 '
alias treee="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias findf="find . -type f -name "
alias findd="find . -type d -name "
alias idea.='idea $(pwd)'


#ANDROID
alias lsadb='adb devices' # list android devices

#iOS
alias lsios='xcrun instruments -s devices ' # list ios devices


#DEFAULTS
#Change the frequency of update checks
alias schedulefrequency='defaults write com.apple.SoftwareUpdate ScheduleFrequency -int'
#Add spacer to Dock
alias addspacer="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}';killall Dock"
#make hidden apps transparent in dock
alias dockshowhidden='defaults write com.apple.Dock showhidden -bool YES; killall Dock'
# keyboard repeat pls
alias keyrepeatplease='default write -g ApplePressAndHoldEnabled -bool false'

#FUN
alias blackslack="sudo ~/Coding/personal/2018/WorkFlow/SH/darkify_slack.sh"

#ssh
alias copyssh='cat ~/.ssh/id_rsa.pub | pbcopy'
alias copysshed='cat ~/.ssh/id_ed25519.pub | pbcopy'
alias reloadssh='sudo launchctl start com.openssh.sshd '

alias reloadsshd='sudo launchctl bootout system /System/Library/LaunchDaemons/ssh.plist && sudo launchctl bootstrap system /System/Library/LaunchDaemons/ssh.plist'


#Postgresql
alias pg-start='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist '
alias pg-stop='launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist '
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

#mysql
alias my='mycli -u root -p root '
alias startmysql='/Applications/MAMP/bin/startMysql.sh '

#iterm
# remove
alias removeItermFromDock="/usr/libexec/PlistBuddy -c 'Add :LSUIElement bool true' /Applications/iTerm 2.app/Contents/Info.plist "

# restore
alias restoreItermToDock="/usr/libexec/PlistBuddy -c 'Delete :LSUIElement' /Applications/iTerm 2.app/Contents/Info.plist "

# KPN
#alias killdefender="launchctl unload /Library/LaunchAgents/com.microsoft.wdav.tray.plist"
alias killdefender="launchctl bootout /Library/LaunchAgents/com.microsoft.wdav.tray.plist"
alias startdefender="launchctl load /Library/LaunchAgents/com.microsoft.wdav.tray.plist"


alias disablespotlight="sudo mdutil -a -i off "

alias cleardns="sudo dscacheutil -flushcache "

alias bcfuckyoureddit='ffmpeg -filter_complex "nullsrc=s=1920x1080,geq=random(1)*255:128:128[vout]" -map "[vout]" -t 46 -c:v libx264 out.mp4 '

#unalias
# unalias ls

echo "✅ .bash_aliases loaded"
