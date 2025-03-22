scoreboard players operation @s math = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] lap
scoreboard players operation @s math -= @s lap

execute if entity @s[scores={math=2..}] run tellraw @s ["",{score:{name:"@s",objective:"math"},color:"yellow"},{translate:"sr.game.laps_to_go",color:"white"}]