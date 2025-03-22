title @a subtitle ["",{translate:"sr.game.diamond_medal_earned",color:"aqua",bold:true}]
title @a title ["",{text:"\uE076\uF001\uF001\uF001\uF001\uF001\uF001\uF001\uE077\uF001\uF001\uF001\uF001\uF001\uF001\uF001\uE078\uF001\uF001\uF001\uF001\uF001\uF001\uF001",color:"#AAAAAA"},{text:"\uE079"}]

execute as @a at @s run playsound minecraft:entity.arrow.hit_player master @s ~ 100000 ~ 100000 1
execute as @a at @s run playsound minecraft:entity.wither.death master @s ~ 100000 ~ 100000 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=7}] run scoreboard players set @e[tag=chosenTrack] medalRace 4
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=8}] run scoreboard players set @e[tag=chosenTrack] medalBattle 4

function sprint_racer_language:_dlc_1/gameplay/time_attack_sidebar