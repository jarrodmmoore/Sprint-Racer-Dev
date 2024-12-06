scoreboard players remove @a[tag=playing,scores={itemCooldown=1..}] itemCooldown 1
scoreboard players set @a[gamemode=spectator,scores={itemCooldown=1..}] itemCooldown 0
scoreboard players add @e[tag=playing,scores={itemCooldown2=..50}] itemCooldown2 1

#containers waiting for respawn give minor speed buff to players NOT on cooldown
execute if entity @s[scores={gameState=3},tag=!optNoItems] as @e[tag=itemchest,type=marker,tag=itemBattle,scores={nodeState=1..,itemBlockState=6..}] at @s run function sprint_racer:items/chest_waiting_for_respawn

#countdown to item respawn
scoreboard players remove @e[tag=node,tag=itemchest,type=marker,scores={nodeState=1..,itemBlockState=12..}] itemBlockState 2
scoreboard players remove @e[tag=node,tag=itemchest,type=marker,scores={nodeState=1..,itemBlockState=1..99}] itemBlockState 1

#spawn a new container at itemBlockState=1
execute as @e[tag=node,tag=itemchest,scores={nodeState=1..,itemBlockState=1}] at @s run function sprint_racer:items/container_spawn/_respawn_preset_resource_control

#item spinning animation every other tick
#execute if entity @s[scores={oTimerGlobal=1}] run function sprint_racer:items/container_spin/_index
function sprint_racer:items/container_spin/_index

#high performance mode, spinning animation gets extra frames
#execute if entity @s[tag=moretick,scores={oTimerGlobal=0}] run function sprint_racer:items/container_spin_extra_frames/_index



#all players check if they're touching a chest
execute as @e[tag=activeplayer] at @s positioned ~ ~-1 ~ run scoreboard players operation @s itemBlockState = @e[limit=1,sort=nearest,distance=..2,tag=itemcontainer,type=armor_stand] itemBlockState
execute as @e[tag=playing,tag=!finished,gamemode=!spectator,scores={itemCooldown=1..,itemCooldown2=25..,actionbarState=..1}] at @s positioned ~ ~-1 ~ if entity @e[limit=1,sort=nearest,distance=..1,tag=itemcontainer,type=armor_stand] run tag @s add bePatient
execute if entity @s[scores={gameState=3}] run scoreboard players set @a[tag=bePatient] actionbarState2 15
execute unless entity @s[scores={gameState=3}] run scoreboard players set @a[tag=bePatient] actionbarState2 10
scoreboard players set @a[tag=bePatient] actionbarState -2
scoreboard players set @a[scores={actionbarState=-2,itemCooldown2=..24}] actionbarState2 0
scoreboard players set @a[scores={actionbarState=-2,itemCooldown2=..24}] actionbarState 1
tag @e[tag=bePatient] remove bePatient

#immediate cooldown in battle resource control because it's fun!!
scoreboard players set @a[tag=playing,scores={itemCooldown=2..}] itemCooldown 1
scoreboard players set @a[tag=playing,scores={itemCooldown2=..51}] itemCooldown2 51
execute if entity @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] unless entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=35a] run scoreboard players set @e[tag=ai,scores={itemCooldown=2..}] itemCooldown 1
execute if entity @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] unless entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=35a] run scoreboard players set @e[tag=ai,scores={itemCooldown2=..51}] itemCooldown2 51
#found a chest? carry out
execute as @e[tag=activeplayer,scores={itemBlockState=1..}] at @s positioned ~ ~-1 ~ run function sprint_racer:items/container_index