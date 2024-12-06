#flip flop between 4 and 5
scoreboard players add #ggTeleport value 1
execute if score #ggTeleport value matches 6.. run scoreboard players set #ggTeleport value 4

#now act like a teleporter
scoreboard players operation @s teleport = #ggTeleport value
scoreboard players operation @s lastTeleport = @s teleport

playsound minecraft:entity.enderman.teleport master @a
particle falling_dust{block_state:"minecraft:magenta_concrete"} ~ ~1 ~ 0.5 0.5 0.5 1 50

#teleport to the nearest teleport destination on the same channel
execute if entity @s[scores={teleport=4}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=4}]
execute if entity @s[scores={teleport=5}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=5}]

execute at @s run tag @e[limit=1,sort=nearest,tag=teleporter,tag=teledest] add itpedtou

execute if entity @e[tag=itpedtou,tag=telesound,type=marker] run tag @s add dTPsound
execute if entity @e[tag=itpedtou,tag=teleparticle,type=marker] run tag @s add dTPparticle
tag @s add delayTP

#AI stuff
execute if entity @s[tag=ai] run function sprint_racer:ai/general/clear_old_ai_targets
execute if entity @s[tag=ai] run scoreboard players set @s aiBehavior 1
execute if entity @s[tag=ai] run scoreboard players set @s aiSubBehavior 0
execute if entity @s[tag=ai] run scoreboard players set @s aiSubBTimer 0

execute if entity @s[tag=ai1] run tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=1}] add dataTarget
execute if entity @s[tag=ai2] run tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=2}] add dataTarget
execute if entity @s[tag=ai3] run tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=3}] add dataTarget
execute if entity @s[tag=ai4] run tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=4}] add dataTarget
execute if entity @s[tag=ai5] run tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=5}] add dataTarget
execute if entity @s[tag=ai6] run tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=6}] add dataTarget
execute if entity @s[tag=ai7] run tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=7}] add dataTarget
execute if entity @s[tag=ai8] run tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=8}] add dataTarget
execute if entity @s[tag=ai9] run tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=9}] add dataTarget
execute if entity @s[tag=ai] run scoreboard players operation @e[tag=dataTarget,type=armor_stand] lastTeleport = @s lastTeleport
execute if entity @s[tag=ai] run tag @e[tag=dataTarget,type=armor_stand] remove dataTarget


tag @e[tag=itpedtou,type=marker] remove itpedtou