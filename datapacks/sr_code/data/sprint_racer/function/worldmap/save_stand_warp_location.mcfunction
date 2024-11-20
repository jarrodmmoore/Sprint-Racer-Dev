execute store result score #getX value run data get entity @s Pos[0] 1
execute store result score #getZ value run data get entity @s Pos[2] 1

scoreboard players operation #targetTrack value = @s worldmapID
execute if score @s worldmapID matches 1000.. run scoreboard players remove #targetTrack value 1000

#save the coordinates
execute if score @s worldmapID matches 1..999 as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand] if score @s rNumber = #targetTrack value run scoreboard players operation @s qsRaceX = #getX value
execute if score @s worldmapID matches 1..999 as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand] if score @s rNumber = #targetTrack value run scoreboard players operation @s qsRaceZ = #getZ value

execute if score @s worldmapID matches 1000.. as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand] if score @s rNumber = #targetTrack value run scoreboard players operation @s qsBattleX = #getX value
execute if score @s worldmapID matches 1000.. as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand] if score @s rNumber = #targetTrack value run scoreboard players operation @s qsBattleZ = #getZ value