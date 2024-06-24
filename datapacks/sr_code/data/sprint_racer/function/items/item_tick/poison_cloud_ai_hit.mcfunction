#get ID?
scoreboard players set #findOwner value -1000
execute on origin run scoreboard players operation #findOwner value = @s playerID

#set attackerID and apply effect
effect give @e[type=!wither,tag=ai,distance=..3,scores={attackTime=..89}] wither 7 1 false
execute unless score #findOwner value matches -1000 run scoreboard players operation @e[type=!wither,tag=ai,distance=..3,scores={attackTime=..89}] attackerID = #findOwner value
execute unless score #findOwner value matches -1000 run scoreboard players set @e[type=!wither,tag=ai,distance=..3,scores={attackTime=..89}] attackTime 100