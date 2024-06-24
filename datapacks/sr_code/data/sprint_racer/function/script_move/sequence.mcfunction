scoreboard players add @s scriptMove 1
scoreboard players set @s[scores={scriptMove=5..}] scriptMove 1

execute if entity @s[scores={death=1..}] run scoreboard players set @s scriptMove 0

#end sequence if no node is within 5 blocks
execute at @s unless entity @e[limit=1,distance=..5,tag=node,tag=scriptmove,scores={scriptMove=1..}] run scoreboard players set @s scriptMove 0

execute if entity @s[scores={scriptMove=1}] at @s run tp @s @e[limit=1,sort=nearest,tag=node,tag=scriptmove,scores={scriptMove=1}]
execute if entity @s[scores={scriptMove=2}] at @s run tp @s @e[limit=1,sort=nearest,tag=node,tag=scriptmove,scores={scriptMove=2}]
execute if entity @s[scores={scriptMove=3}] at @s run tp @s @e[limit=1,sort=nearest,tag=node,tag=scriptmove,scores={scriptMove=3}]
execute if entity @s[scores={scriptMove=4}] at @s run tp @s @e[limit=1,sort=nearest,tag=node,tag=scriptmove,scores={scriptMove=4}]

#exit the sequence once we hit a node marked with "scriptEnd"
execute if entity @e[distance=..1,tag=node,tag=scriptmove,tag=scriptEnd] run scoreboard players set @s scriptMove 0

#exit the sequence automatically if we're stuck
execute if entity @s[scores={scriptMoveLimit=..0}] run scoreboard players set @s scriptMove 0

scoreboard players remove @s scriptMoveLimit 1