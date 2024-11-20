scoreboard players add @s math2 1
scoreboard players set @s[scores={math2=5..}] math2 -1

execute if entity @s[tag=!hurryUp,scores={math2=..1}] run tp @s ^ ^ ^1.3 ~ ~1.5
execute if entity @s[tag=!hurryUp,scores={math2=2..}] run tp @s ^ ^ ^1.3 ~ ~-1.5
execute if entity @s[tag=hurryUp,scores={math2=..1}] run tp @s ^ ^ ^1.6 ~ ~1.5
execute if entity @s[tag=hurryUp,scores={math2=2..}] run tp @s ^ ^ ^1.6 ~ ~-1.5

execute if entity @s[tag=fireball] if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=11a] run tag @s add homing