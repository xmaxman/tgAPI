
 # Inline antispam and group moderator TeleGram bot.
 ### New and beautifully 

[![http://t.me/sajjad_021](https://img.shields.io/badge/Telegram-sajjad__021-blue.svg)](http://t.me/sajjad_021)
[![https://github.com/tgMember/tgAPI](https://img.shields.io/badge/%F0%9F%92%AC_GitHub-tgAPI-green.svg)](https://github.com/tgMember/tgAPI)
[![http://tgmember.cf](https://img.shields.io/badge/webpage-tgMember-ff69b4.svg)](http://tgmember.cf)

[![https://t.me/tgMember](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-tgMember-blue.svg)](https://t.me/tgMember)

<h1 align="center">tgGuard v6</h1>

<p align="center"> <img class="td" style="vertical-align: middle;" src="https://tgmemberplus.000webhostapp.com/tgguard.jpg" alt="" width="320" height="320" /></p>

***

## Instruction 

first goto botfather and create a robot

trun on inline mode and change Inline feedback too 100%

revoke token

***

## Installation

For on Ubuntu 16.04 x64:
```bash
cd $home && git clone https://github.com/tgMember/tgAPI.git && cd tgAPI && chmod 700 launch.sh && ./launch.sh
```

press key "y" & "enter"

after install completed

```
cd bot 
nano bot.lua
```

edit and replace

 line 10 = id owner & sudo

 line 11 = sudo user's
 
 line 12 = cli bot id (telegram account)
 
 line 42 = cli bot id (telegram account)
 
 line 878 = robot id (botfather)


press key "ctrl+x" & "y" & "enter"


```
cd ../api
nano api.bot
```

edit and replace

  line 5 token robot (botfather)
 
  line 10 = id owner & sudo
  
  line 12 = sudo user's
  
  and line 162 =  #CliBotId : (telegram account)  -   #SudoId (owner id)
  
						if q.from.id == #CliBotId or q.from.id == #SudoId then
  
  
 
 press key "ctrl+x" & "y" & "enter


### Run cli bot

 ```bash
cd ../bot
screen bot.sh
     # Will ask you for a phone number & confirmation code.
```


close window



### Run Robot

from sudo account & cli bot account, start robot (botfather)


run again server


```
cd tgAPI && cd api && screen ./api.sh
```

### Command&help

from sudo account send " /start " to cli bot.

then

add cli bot too supergroup and send /settings

-


# [Creator](https://telegram.me/sajjad_021)
# [Channel](https://telegram.me/tgMember)
			
