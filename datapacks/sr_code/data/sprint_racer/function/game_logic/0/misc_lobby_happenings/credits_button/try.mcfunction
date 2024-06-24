setblock 1652 90 418 minecraft:lever[powered=false,face=floor]

#all players must be within 10 blocks to watch the credits
execute if entity @a[tag=playing,tag=!afk,distance=10..] run function sprint_racer_language:_dlc_3/lobby/credits_button_fail
execute unless entity @a[tag=playing,tag=!afk,distance=10..] run function sprint_racer:game_logic/0/misc_lobby_happenings/credits_button/success