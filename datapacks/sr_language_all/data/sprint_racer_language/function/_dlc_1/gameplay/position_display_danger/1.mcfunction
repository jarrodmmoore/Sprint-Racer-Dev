title @s[tag=!darkHUD] subtitle ["",{"text":"1st","color":"red","bold":true}]
title @s[tag=darkHUD] subtitle ["",{"text":"1st","color":"dark_red","bold":true}]
execute if entity @s[tag=!firstplace] at @s unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=moretick] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ .5 2
tag @s add firstplace