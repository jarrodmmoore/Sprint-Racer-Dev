setblock 1585 72 427 minecraft:stone_button[powered=false,facing=south]

execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gpNumber=1..}] run function sprint_racer:game_logic/11/start_grand_prix
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gpNumber=1..}] run function sprint_racer_language:_dlc_3/grand_prix/cannot_start