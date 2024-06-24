execute unless entity @s[tag=halftick,scores={gameState=1..}] run scoreboard players remove @a[tag=playing,scores={itemCooldown=1..}] itemCooldown 1
execute unless entity @s[tag=halftick,scores={gameState=1..}] run scoreboard players add @e[tag=playing,scores={itemCooldown2=..50}] itemCooldown2 1

#countdown to item respawn
scoreboard players remove @e[tag=node,tag=itemchest,scores={nodeState=1..,itemBlockState=1..99}] itemBlockState 1
#CONTAINERS DO NOT RESPAWN IN TIME ATTACK AFTER THE FIRST PICK

#spawn a new container at itemBlockState=1
execute as @e[tag=node,tag=itemchest,tag=!itemBattle,scores={nodeState=1..,itemBlockState=1}] at @s run function sprint_racer:items/container_spawn/_respawn_preset