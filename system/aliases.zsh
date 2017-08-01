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

function color() {
  echo -e "\033[0mNC (No color)"
  echo -e "\033[1;37mWHITE\t\033[0;30mBLACK"
  echo -e "\033[0;34mBLUE\t\033[1;34mLIGHT_BLUE"
  echo -e "\033[0;32mGREEN\t\033[1;32mLIGHT_GREEN"
  echo -e "\033[0;36mCYAN\t\033[1;36mLIGHT_CYAN"
  echo -e "\033[0;31mRED\t\033[1;31mLIGHT_RED"
  echo -e "\033[0;35mPURPLE\t\033[1;35mLIGHT_PURPLE"
  echo -e "\033[0;33mYELLOW\t\033[1;33mLIGHT_YELLOW"
  echo -e "\033[1;30mGRAY\t\033[0;37mLIGHT_GRAY"
}