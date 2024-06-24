#this applies to players, not AIs

#find the playerID of the owner of the nearest potion
scoreboard players set #findPlayer value -1000
execute as @e[limit=1,tag=lingering_trap,type=area_effect_cloud,distance=..5,sort=nearest] on origin if entity @s[tag=activeplayer,scores={playerID=-999..}] run scoreboard players operation #findPlayer value = @s playerID

#set attackerID if an owner was found
execute unless score #findPlayer value matches -1000 unless score @s playerID = #findPlayer value run scoreboard players operation @s attackerID = #findPlayer value
execute unless score #findPlayer value matches -1000 unless score @s playerID = #findPlayer value run scoreboard players set @s attackTime 100