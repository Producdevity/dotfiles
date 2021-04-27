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
