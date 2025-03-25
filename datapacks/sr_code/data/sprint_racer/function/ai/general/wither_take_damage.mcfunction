execute store result score @s math run data get entity @s Health
scoreboard players operation @s math -= @e[tag=random,x=1548,y=155,z=406,distance=..1,limit=1,scores={rNumber=4}] rNumber
execute store result entity @s Health double 1 run scoreboard players get @s math
execute at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 3 1
execute at @s run particle crit ~ ~1 ~ 0.7 0.7 0.7 0 50