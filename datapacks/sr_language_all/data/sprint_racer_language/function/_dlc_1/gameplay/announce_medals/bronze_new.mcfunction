title @a subtitle ["",{"translate":"sr.game.bronze_medal_earned","color":"gold","bold":true}]
title @a title [""]

execute as @a at @s run playsound minecraft:entity.arrow.hit_player master @s ~ 100000 ~ 100000 .6
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=7}] run scoreboard players set @e[tag=chosenTrack] medalRace 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=8}] run scoreboard players set @e[tag=chosenTrack] medalBattle 1

function sprint_racer_language:_dlc_1/gameplay/time_attack_sidebar