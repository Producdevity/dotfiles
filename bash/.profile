# --------------------------------------------------------------------
#  mkcd:  Make an directory givin in argument '1' and cd in to this directory
# --------------------------------------------------------------------
function mkcd () {
  mkdir -p -- "$1" &&
    cd -P -- "$1"
  }

# --------------------------------------------------------------------
#  mans:   Search manpage given in argument '1' for term given in argument '2' (case insensitive)
#          displays paginated result with colored search terms and two lines surrounding each hit.            Example: mans mplayer codec
# --------------------------------------------------------------------
mans () {
  man $1 | grep -iC2 --color=always $2 | less
}

# --------------------------------------------------------------------
#  extract:  Extract most know archives with one command
# --------------------------------------------------------------------
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1     ;;
      *.tar.gz)    tar xzf $1     ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       unrar e $1     ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xf $1      ;;
      *.tbz2)      tar xjf $1     ;;
      *.tgz)       tar xzf $1     ;;
      *.zip)       unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)     echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

check_colors () {
  awk 'BEGIN{
  s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
  for (colnum = 0; colnum<77; colnum++) {
    r = 255-(colnum*255/76);
    g = (colnum*510/76);
    b = (colnum*255/76);
    if (g>255) g = 510-g;
      printf "\033[48;2;%d;%d;%dm", r,g,b;
      printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
      printf "%s\033[0m", substr(s,colnum+1,1);
    }
    printf "\n";
  }'
}

# --------------------------------------------------------------------
# catjson: pretty print json
#
# Example: catjson package.json
# --------------------------------------------------------------------
catjson() {
  cat "$1" | pjson
}

# --------------------------------------------------------------------
# catjson: pretty print json
#
# Example: catjson package.json
# --------------------------------------------------------------------
vape() {
  echo "$1" >> ~/Coding/personal/2022/yes-i-am-old-enough/Website/sites.txt 
}

__not_working_download_chrome_extension_code() {
  extension_id="$1"   # change this ID
  curl -L -o "$extension_id.zip" "https://clients2.google.com/service/update2/crx?response=redirect&os=mac&arch=x86-64&nacl_arch=x86-64&prod=chromecrx&prodchannel=stable&prodversion=44.0.2403.130&x=id%3D$extension_id%26uc" 
  unzip -d "$extension_id-source" "$extension_id.zip"
}


reload_ssh() {
  sudo launchctl unload /System/Library/LaunchDaemons/ssh.plist
  sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist
}

# --------------------------------------------------------------------------
#  route:  add Google services to use en0 interface to avoid the VPN tunnel
# --------------------------------------------------------------------------
route_google_no_vpn() {
  sudo route add -net 172.217.0.0/16 -interface en0
  sudo route add -net 172.253.0.0/16 -interface en0
}


# --------------------------------------------------------------------------
#  @param port: the port of the process you want to DIE
#  @example: killport 8081
# --------------------------------------------------------------------------
killport() {
  lsof -i tcp:"$1" | awk 'NR!=1 {print $2}' | xargs kill -9
}



echo "✅ .profile loaded"

