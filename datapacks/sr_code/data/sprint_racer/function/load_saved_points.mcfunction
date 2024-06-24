scoreboard players add @a addPoints 0
scoreboard players add @a gpPoints 0
scoreboard players add @a endlessPoints 0

#DEV
#execute as @e[scores={addPoints=1..}] run tellraw @a ["",{"selector":"@s"},{"text":" has points: "},{"score":{"name":"@s","objective":"addPoints"}}]

#load saved points into dummyPoints objective if using gp or endless mode
execute if entity @e[tag=w,type=armor_stand,tag=endlessMode,tag=!grandprix] as @a run scoreboard players operation @s dummyPoints = @s endlessPoints
execute if entity @e[tag=w,type=armor_stand,tag=grandprix] as @a run scoreboard players operation @s dummyPoints = @s gpPoints

#now add the points into the saved objectives (must be done immediately to avoid re-joined players losing their gp points)
execute if entity @e[tag=w,type=armor_stand,tag=endlessMode,tag=!grandprix] as @a run scoreboard players operation @s endlessPoints += @s addPoints
execute if entity @e[tag=w,type=armor_stand,tag=grandprix] as @a run scoreboard players operation @s gpPoints += @s addPoints