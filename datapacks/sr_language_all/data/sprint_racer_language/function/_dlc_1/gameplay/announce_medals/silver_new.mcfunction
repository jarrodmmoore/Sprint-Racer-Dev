title @a subtitle ["",{"translate":"sr.game.silver_medal_earned","color":"gray","bold":true}]
title @a title [""]

execute as @a at @s run playsound minecraft:entity.arrow.hit_player master @s ~ 100000 ~ 100000 .75
execute if entity @e[tag=w,scores={gameState=7}] run scoreboard players set @e[tag=chosenTrack] medalRace 2
execute if entity @e[tag=w,scores={gameState=8}] run scoreboard players set @e[tag=chosenTrack] medalBattle 2

function sprint_racer_language:_dlc_1/gameplay/time_attack_sidebar