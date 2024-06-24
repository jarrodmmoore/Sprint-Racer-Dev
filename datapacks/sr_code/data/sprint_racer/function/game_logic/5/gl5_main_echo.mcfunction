scoreboard players add @s gameTime 1

#global timer
execute if entity @s[scores={gameTime=10..}] run function sprint_racer:game_logic/5/global_timer

#item stuff
execute if entity @s[tag=optItems,scores={oTimer=0,currentTimeMsec=0,gameTime=10..}] run function sprint_racer:game_logic/5/item_stuff
execute if entity @s[tag=!optItems,scores={oTimer=0,currentTimeMsec=0,gameTime=10..}] run function sprint_racer:items/container_check_itemless
function sprint_racer:items/container_tick