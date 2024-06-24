scoreboard players remove @a[tag=playing,scores={itemCooldown=1..}] itemCooldown 1
scoreboard players set @a[gamemode=spectator,scores={itemCooldown=1..}] itemCooldown 0
scoreboard players add @e[tag=playing,scores={itemCooldown2=..50}] itemCooldown2 1

#item spinning animation every other tick
#execute if entity @s[scores={oTimerGlobal=1}] run function sprint_racer:items/container_spin/_index
function sprint_racer:items/container_spin/_index

#high performance mode, spinning animation gets extra frames
#execute if entity @s[tag=moretick,scores={oTimerGlobal=0}] run function sprint_racer:items/container_spin_extra_frames/_index

#all players check if they're touching a chest
execute as @e[tag=activeplayer] at @s positioned ~ ~-1 ~ run scoreboard players operation @s itemBlockState = @e[limit=1,sort=nearest,distance=..2,tag=itemcontainer,type=armor_stand] itemBlockState
execute as @e[tag=playing,tag=!finished,gamemode=!spectator,scores={itemCooldown=1..,itemCooldown2=25..,actionbarState=..1}] at @s positioned ~ ~-1 ~ if entity @e[limit=1,sort=nearest,distance=..1,tag=itemcontainer,type=armor_stand] run tag @s add bePatient
execute if entity @s[type=armor_stand,scores={gameState=3}] run scoreboard players set @a[tag=bePatient] actionbarState2 15
execute unless entity @s[scores={gameState=3}] run scoreboard players set @a[tag=bePatient] actionbarState2 10
scoreboard players set @a[tag=bePatient] actionbarState -2
scoreboard players set @a[scores={actionbarState=-2,itemCooldown2=..24}] actionbarState2 0
scoreboard players set @a[scores={actionbarState=-2,itemCooldown2=..24}] actionbarState 1
tag @e[tag=bePatient] remove bePatient

#found a chest? carry out
execute as @e[tag=activeplayer,scores={itemBlockState=1..}] at @s positioned ~ ~-1 ~ run function sprint_racer:items/container_index