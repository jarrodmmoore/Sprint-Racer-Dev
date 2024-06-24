#chances of dodging depend on skill level

scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..50}] rNumber

execute if entity @s[scores={aiSkill=..1,rNumber=1..2}] run tag @s add avoidtrap
execute if entity @s[scores={aiSkill=2,rNumber=1..4}] run tag @s add avoidtrap
execute if entity @s[scores={aiSkill=3..,rNumber=1..8}] run tag @s add avoidtrap
execute if entity @s[scores={aiRotOSTime=1..}] run tag @s add avoidtrap

scoreboard players operation @s[tag=avoidtrap] rNumber = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..8}] rNumber
execute if entity @s[tag=avoidtrap,scores={rNumber=1..4,aiRotOSTime=..0}] run scoreboard players set @s aiRotOffset 45
execute if entity @s[tag=avoidtrap,scores={rNumber=5..8,aiRotOSTime=..0}] run scoreboard players set @s aiRotOffset -45
execute if entity @s[tag=avoidtrap,scores={rNumber=1..8}] run scoreboard players set @s aiRotOSTime 3

#don't go off a cliff please
execute at @s if entity @s[tag=avoidtrap] unless block ~2 ~-1 ~ air unless block ~-2 ~-1 ~ air unless block ~ ~-1 ~2 air unless block ~ ~-1 ~-2 air run tag @s add good2dodge
execute if entity @s[tag=avoidtrap] unless entity @s[tag=good2dodge] run scoreboard players set @s aiRotOffset 0
execute if entity @s[tag=avoidtrap] unless entity @s[tag=good2dodge] run scoreboard players set @s aiRotOSTime 0
execute if entity @s[tag=avoidtrap] run tag @s remove good2dodge

execute if entity @s[scores={speedlevel=6..,aiSkill=3..}] positioned ^ ^ ^-2 if entity @e[tag=trap,distance=..2] run tag @e[tag=currentMaster] add aijump

tag @s remove avoidtrap