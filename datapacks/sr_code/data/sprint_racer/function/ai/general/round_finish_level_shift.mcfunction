#run by "w"

tag @s remove updatePoints

#only update level if an AI played in this round
execute if entity @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] run tag @s add updatePoints

#human player got first, +3 level
execute if entity @s[tag=updatePoints] if entity @a[tag=playing,scores={finishPos=1}] run scoreboard players add global aiLevel 3

#decay over time, -1 level
execute if entity @s[tag=updatePoints] run scoreboard players remove global aiLevel 1

#human lost to all AI, -1 point
scoreboard players set #math value 0
#find highest AI score
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={finishPos=1..}] if score @s finishPos > #math value run scoreboard players operation #math value = @s finishPos
execute as @a[tag=playing,scores={finishPos=1..}] if score @s finishPos > #math value run tag @s add lost2ai
execute if entity @s[tag=updatePoints] if entity @a[tag=lost2ai] run scoreboard players remove global aiLevel 1
tag @a[tag=lost2ai] remove lost2ai

#keep in bounds
execute if score global aiLevel matches ..-1 run scoreboard players set global aiLevel 0
execute if score global aiLevel matches 16.. run scoreboard players set global aiLevel 15

tag @s remove updatePoints