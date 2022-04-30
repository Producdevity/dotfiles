alias vim_='/usr/local/bin/vim '
alias mvim='mvim -v'
alias vim='nvim '

alias sudo='sudo '

alias s='sequelize'

#project of the day
alias cdtcp='cd ~/Coding/personal/theoriecursusplanner/theoriecursusplanner/'
alias tcp='cdtcp && panw'

# used to lsicons [shows icons next to the file info]
# alias ls='/opt/coreutils/bin/ls '

# some more ls aliases
alias ll='ls -alhF '
alias l='ls -FGlAhp '
alias la='ls -A '
alias llf='ls -alhF | grep "^-" ' # list only files using grep
alias lld='ls -alhF | grep "^d" ' # list only dirs using grep
alias lsdir='ls -dl */ ' # list only dirs

# navigate
alias a='alias '
alias cdi='cd ~/Coding && ls'
alias b='cd ..'
alias bb='cd ../..'
alias bbb='cd ../../..'
alias bbbb='cd ../../../..'

#navigate Coding
alias cdisp='cd ~/Coding/school/projects && ls'
alias cdisch='cd ~/Coding/school/ && ls'
alias cdicli='cd ~/Coding/client/ && ls'
alias cdiper='cd ~/Coding/personal/ && ls'
alias cdites='cd ~/Coding/testing/ && ls'
alias cditut='cd ~/Coding/tutorial/ && ls'
alias cdstage='cd ~/Coding/stage/ && ls'
alias cdaok='cd ~/Coding/stage/code-bridge/aok && ls'
alias aokl='cd ~/Coding/stage/code-bridge/aok-laravel && ls'

#Reload
alias reloadalias='source ~/.bash_aliases'

#Laravel
alias phpunit='vendor/bin/phpunit '
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
alias ctags=/usr/local/bin/ctags

#Vim fast-edit
alias vimba='vim ~/.bash_aliases'
alias vimbp='vim ~/.bash_profile'
alias vimbr='vim ~/.bashrc'
alias vimrc='vim ~/.vim/.vimrc'
alias nvimrc='vim ~/.config/nvim/init.vim'
alias nvimdir='cd ~/.config/nvim'
alias vimirc='vim ~/.ideavimrc'
alias vimssh='vim ~/.ssh/config'
alias vimp='vim ~/.profile'
alias vimz='vim ~/.zshrc'
alias .bp='. ~/.bash_profile'
alias .br='. ~/.bashrc'
alias .p='. ~/.profile'
alias .z='. ~/.zshrc'
alias tmuxrc='vim ~/.tmux.conf'
alias tmuxprc='vim ~/.tmux-powerlinerc'
alias v='vim .'
alias tmuxx='tmux ls && read tmux_session && tmux attach -t ${tmux_session:-default} || tmux new -s ${tmux_session:-default}'

#Git
alias ga.='git add .'
alias gaA='git add -A'
alias gb='git branch'
alias gd='git diff'
alias ghead='simple_git_head -1'
alias gslog='simple_git_log -15'
alias gch='git checkout'
alias gc='git commit -m'
alias gst='git status'
alias gs='git status | cowsay | lolcat '
alias grv='git remote -v'
alias gp='git push'
alias gpo='git push origin'
alias wip="git add . && git commit -m 'wip'"
alias gtree='git log --oneline --graph --decorate --all '
alias gtreepretty='git log --pretty=oneline --graph --decorate --all '
alias glg1="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all "
alias glg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all "
alias delete_ds_store='find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch '
alias gitdf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias gitd='gitdf '
alias gitda='gitdf add'
alias gitds='gitdf status'
alias gitdd='gitdf diff'
alias gitdc='gitdf commit -m'
alias dotfiles='cd $HOME/.dotfiles'

alias gpushod='git push origin develop '
alias gpullod='git pull origin develop '
alias gpushom='git push origin master '
alias gpullom='git pull origin master '

#Node
alias nm='nodemon server'
alias nrt='npm run test'
alias nt='npm run test'
# alias nr='npm run'
alias nrs='npm run start'
alias nrb='npm run build'
alias nrw='npm run watch'
alias nrd='npm run dev'
alias ni='npm install'
alias nis='npm install --save'
alias nisd='npm install --save-dev'
alias npmig='sudo npm install -g'
alias npmis='npm install --save'
alias npmisd='npm install --save-dev'

alias y='yarn'
alias ys='yarn start'
alias ya='yarn add'
alias yga='yarn global add'
alias yd='yarn dev'
alias yw='yarn watch'
alias yb='yarn build'
alias yt='yarn test'
alias ytw='yarn test:watch'
alias t='yarn test'
alias yu='yarn unit'
alias ye='yarn e2e'
alias yf='yarn flow '
alias yl='yarn lint '
alias yel='yarn eslint '
alias updateYarn='curl --compressed -o- -L https://yarnpkg.com/install.sh | bash '

ARTIFACTOR_REGISTRY="https://artifactory.persgroep.cloud/artifactory/api/npm/npm";
alias setartifactoryregistry="npm config set registry ${ARTIFACTOR_REGISTRY} && yarn config set registry ${ARTIFACTOR_REGISTRY}"
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

#Meteor
alias m='meteor'

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
alias cp_prettierrc='cp ~/lib/.prettierrc_defaults ./.prettierrc'



#ANDROID
alias lsd='adb devices' # list android devices

#iOS
alias lsios='xcrun instruments -s devices ' # list ios devices


#DEFAULTS
#Change the frequency of update checks
alias schedulefrequency='defaults write com.apple.SoftwareUpdate ScheduleFrequency -int'
#Add spacer to Dock
alias addspacer="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}';killall Dock"
#make hidden apps transparent in dock
alias dockshowhidden='defaults write com.apple.Dock showhidden -bool YES; killall Dock'

#FUN
alias blackslack="sudo ~/Coding/personal/2018/WorkFlow/SH/darkify_slack.sh"

#ssh
alias switch_ssh_hexelnet="switch_ssh hexelnet"
alias sshexelnet="switch_ssh hexelnet"
alias switch_ssh_persgroep="switch_ssh persgroep"
alias sspersgroep="switch_ssh persgroep"
alias switch_ssh_way="switch_ssh way"
alias ssway="switch_ssh way"
alias copyssh='cat ~/.ssh/id_rsa.pub | pbcopy'
alias reloadssh='sudo launchctl start com.openssh.sshd '


#Postgresql
alias pg-start='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist '
alias pg-stop='launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist '
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

#brew
alias brs='brew services '
alias brsl='brew services list '


#mysql
alias my='mycli -u root -p root '
alias startmysql='/Applications/MAMP/bin/startMysql.sh '

#vagrant
alias vg='vagrant '
alias vgu='vagrant up '


#iterm
# remove
alias removeItermFromDock="/usr/libexec/PlistBuddy -c 'Add :LSUIElement bool true' /Applications/iTerm 2.app/Contents/Info.plist "

# restore
alias restoreItermToDock="/usr/libexec/PlistBuddy -c 'Delete :LSUIElement' /Applications/iTerm 2.app/Contents/Info.plist "

alias onelogin='java -jar $HOME/.aws/onelogin/onelogin-aws-cli.jar --profile onelogin --username yassine.gherbi@persgroep.net --appid 354709 --subdomain persgroep --region eu-west-1'

alias tetris='~/tetris'

