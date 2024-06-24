title @a subtitle ["",{"translate":"sr.game.gold_medal_earned","color":"yellow","bold":true}]
title @a title [""]

execute as @a at @s run playsound minecraft:entity.arrow.hit_player master @s ~ 100000 ~ 100000 .92
execute if entity @e[tag=w,scores={gameState=7}] run scoreboard players set @e[tag=chosenTrack] medalRace 3
execute if entity @e[tag=w,scores={gameState=8}] run scoreboard players set @e[tag=chosenTrack] medalBattle 3

function sprint_racer_language:_dlc_1/gameplay/time_attack_sidebar