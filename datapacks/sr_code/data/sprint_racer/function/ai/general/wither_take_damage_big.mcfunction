#execute at @s run summon minecraft:arrow ~ ~4 ~ {Motion:[0.0d,-4.0d,0.0d],Invisible:1b,Silent:1b,pickup:0b,damage:1.0d,Color:0,Tags:["damagewither"],Potion:"minecraft:healing"}

#nah this method is better
execute store result score @s math run data get entity @s Health
scoreboard players operation @s math -= @e[tag=random,x=1548,y=155,z=406,distance=..1,limit=1,scores={rNumber=8}] rNumber
execute store result entity @s Health double 1 run scoreboard players get @s math
execute at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 3 1
execute at @s run particle crit ~ ~1 ~ 0.7 0.7 0.7 0 50