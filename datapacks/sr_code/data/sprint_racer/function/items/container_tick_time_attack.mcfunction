scoreboard players remove @a[tag=playing,scores={itemCooldown=1..}] itemCooldown 1
scoreboard players set @a[gamemode=spectator,scores={itemCooldown=1..}] itemCooldown 0
scoreboard players add @e[tag=playing,scores={itemCooldown2=..50}] itemCooldown2 1

#countdown to item respawn
scoreboard players remove @e[tag=node,tag=itemchest,scores={nodeState=1..,itemBlockState=1..99}] itemBlockState 1
#CONTAINERS DO NOT RESPAWN IN TIME ATTACK AFTER THE FIRST PICK

#spawn a new container at itemBlockState=1
execute unless entity @s[tag=taNoItems] as @e[tag=node,tag=itemchest,scores={nodeState=1..,itemBlockState=1}] at @s unless block ~ -64 ~ minecraft:wither_rose run function sprint_racer:items/container_spawn/_respawn_preset_timeattack

#item spinning animation every other tick
#execute if entity @s[scores={oTimerGlobal=1}] run function sprint_racer:items/container_spin/_index
function sprint_racer:items/container_spin/_index

#high performance mode, spinning animation gets extra frames
#execute if entity @s[tag=moretick,scores={oTimerGlobal=0}] run function sprint_racer:items/container_spin_extra_frames/_index


#repeat some stuff if at half tick speed
#execute if entity @s[tag=halftick] run function sprint_racer:items/container_tick_echo

#all players check if they're touching a chest
execute as @e[tag=activeplayer] at @s positioned ~ ~-1 ~ run scoreboard players operation @s itemBlockState = @e[limit=1,sort=nearest,distance=..2,tag=itemcontainer,type=armor_stand] itemBlockState
execute as @e[tag=playing,tag=!finished,gamemode=!spectator,scores={itemCooldown=1..,itemCooldown2=25..,actionbarState=..1}] at @s positioned ~ ~-1 ~ if entity @e[limit=1,sort=nearest,distance=..1,tag=itemcontainer,type=armor_stand] run tag @s add bePatient
execute if entity @s[scores={gameState=3}] run scoreboard players set @a[tag=bePatient] actionbarState2 15
execute unless entity @s[scores={gameState=3}] run scoreboard players set @a[tag=bePatient] actionbarState2 10
scoreboard players set @a[tag=bePatient] actionbarState -2
scoreboard players set @a[scores={actionbarState=-2,itemCooldown2=..24}] actionbarState2 0
scoreboard players set @a[scores={actionbarState=-2,itemCooldown2=..24}] actionbarState 1
tag @e[tag=bePatient] remove bePatient

#immediate cooldown in battle time attack because it's fun!!
execute if entity @s[scores={gameState=8}] run scoreboard players set @a[tag=playing,scores={itemCooldown=2..}] itemCooldown 1
execute if entity @s[scores={gameState=8}] run scoreboard players set @a[tag=playing,scores={itemCooldown2=..51}] itemCooldown2 51

#found a chest? carry out
execute as @e[tag=activeplayer,scores={itemBlockState=1..}] at @s positioned ~ ~-1 ~ run function sprint_racer:items/container_index