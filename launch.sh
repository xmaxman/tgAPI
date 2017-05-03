#!/usr/bin/env bash
cd $HOME/tgInline
aa() {
 sudo apt-get install
}
function logo() {
    declare -A logo
    seconds="0.004"
logo[-1]=" ::::::::::  :::::::      ::     ::  ::::::::  ::     ::  ::::::  :::::::: :::::: "
logo[0]="     +:     :+    :+:    :+:+   +::+ +:       :+:+   +:+: +:   :+ +:       +:   :+ "
logo[1]="     :+     +:           :+ +:+:+ :+ :+       :+ +:+:+ :+ :+   +: :+       :+   +: "
logo[2]="     ++     :#           ++  +:+  ++ +++++#   ++  +:+  ++ #+++++  +++:+#   +++++#  "
logo[3]="     ++     +#  +#+#+    #+   +   #+ #+       #+   +   +# #+   +# #+       #+   +# "
logo[4]="     +#     #+     +#    +#       +# +#       +#       #+ +#    # +#       +#    #+"
logo[5]="     ##      #######     ##       ## ######## ##       ## ####### ######## ##    ##"
    printf "\033[38;5;208m\t"
    for i in ${!logo[@]}; do
        for x in `seq 0 ${#logo[$i]}`; do
            printf "${logo[$i]:$x:1}"
            sleep $seconds
        done
        printf "\n\t"
    done
printf "\n"
}
function tg() {
 echo -e "\e[1;36mremove old telegram-cli\e[208m"
    rm -rf ../.telegram-cli
    
 echo -e "\e[1;36minstall telegram-cli\e[0m"
    cd bot
    wget https://valtman.name/files/telegram-cli-1222
    mv telegram-cli-1222 telegram-cli
    cd ..
 }
 function is() {
 echo -e "\e[2;37mUpdating packages\e[400m"
    sudo apt-get update -y
 
 echo -e "\e[1;35mUpgrade packages\e[600m"
    sudo apt-get upgrade -y
 
 echo -e "\e[1;32mInstalling dependencies\e[208m"
    sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev -y
 
 echo -e "\e[2;36mInstalling more dependencies\e[408m"
    sudo apt-get install lua-lgi -y
    sudo apt-get install software-properties-common -y
    sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
    sudo apt-get install libstdc++6 -y
}
function lu() {
echo -e "\e[1;30mInstalling LuaRocks from sources\e[606m"
    wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz
    tar zxpf luarocks-2.4.2.tar.gz
    rm -rf luarocks-2.4.2.tar.gz
    cd luarocks-2.4.2
    ./configure; sudo make bootstrap
    make build
    sudo make install
    ./configure --lua-version=5.2
    make build
    sudo make install
    rocks="luasocket luasec redis-lua lua-term serpent dkjson Lua-cURL multipart-post lanes"
    for rock in $rocks; do
        sudo luarocks install $rock
    done
    cd ..
}
function ch() {
 chmod +x ./bot/telegram-cli
 chmod +x ./api/api.sh
 chmod +x ./bot/bot.sh
}
function py() {
 sudo apt-get install python-setuptools python-dev build-essential -y 
 sudo easy_install pip -y
 sudo pip install redis -y
}
install() {
logo
clear
tg
clear
is
clear
lu
clear
py
clear
ch
clear
logo
}
if [ ! -f ./bot/telegram-cli ]; then
    echo -e "\033[38;5;208mError! telegram-cli not found, Please reply to this message:\033[1;208m"
    read -p "Do you want to install and config? [y/n] = "
	if [ "$REPLY" == "y" ] || [ "$REPLY" == "Y" ]; then
        install
    elif [ "$REPLY" == "n" ] || [ "$REPLY" == "N" ]; then
        exit 1
  fi
fi
if [[ $1 == "api" ]]; then
   lua ./api/api.lua
fi
sudo service redis-server start
   ./bot/telegram-cli -s ./bot/bot.lua
fi