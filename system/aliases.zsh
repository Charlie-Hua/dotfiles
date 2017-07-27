alias reload='source ~/.zshrc'

# Nginx
function nginx_stop() {
    # ps ax | grep nginx | cut -d " " -f 1 | xargs sudo kill -9
    sudo nginx -s stop
}
function nginx_start() {
      sudo /usr/local/opt/nginx/bin/nginx
}
alias nginxerror='e /usr/local/var/log/nginx/error.log'
alias nginxaccess='e /usr/local/var/log/nginx/access.log'
alias nginxconfig='e /usr/local/etc/nginx/nginx.conf'

alias zipalign='$ANDROID_HOME/build-tools/$(ls $ANDROID_HOME/build-tools|tail -1)/zipalign'

alias postgres_recover='rm /usr/local/var/postgres/postmaster.pid'

function ip() {
  IP0="$(ipconfig getifaddr en0)"
  IP1="$(ipconfig getifaddr en1)"
  IP=""
  if [ "$IP0" != "" ]
  then
   IP=$IP0
  elif [ "$IP1" != "" ]
  then
   IP=$IP1
  else
   IP=""
  fi
  echo $IP
}

# Hide/show dot files/dirs
alias hidedot='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias showdot='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
