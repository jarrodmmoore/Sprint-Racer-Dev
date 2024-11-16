tag @e[limit=1,sort=nearest,tag=teleporter,type=marker,distance=..10,tag=!teledest] add ugonnatpme

scoreboard players operation @s teleport = @e[tag=ugonnatpme,type=marker,distance=..10] teleport
scoreboard players operation @s lastTeleport = @s teleport

execute if entity @e[tag=ugonnatpme,tag=telesound,type=marker,distance=..10] run playsound minecraft:entity.enderman.teleport master @a
execute if entity @e[tag=ugonnatpme,tag=teleparticle,type=marker,distance=..10] run particle falling_dust{block_state:"minecraft:magenta_concrete"} ~ ~1 ~ 0.5 0.5 0.5 1 50

#teleport to the nearest teleport destination on the same channel
execute if entity @s[scores={teleport=1}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=1}]
execute if entity @s[scores={teleport=2}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=2}]
execute if entity @s[scores={teleport=3}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=3}]
execute if entity @s[scores={teleport=4}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=4}]
execute if entity @s[scores={teleport=5}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=5}]
execute if entity @s[scores={teleport=6}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=6}]
execute if entity @s[scores={teleport=7}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=7}]
execute if entity @s[scores={teleport=8}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=8}]
execute if entity @s[scores={teleport=9}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=9}]
execute if entity @s[scores={teleport=10}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=10}]
execute if entity @s[scores={teleport=11}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=11}]
execute if entity @s[scores={teleport=12}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=12}]
execute if entity @s[scores={teleport=13}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=13}]
execute if entity @s[scores={teleport=14}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=14}]
execute if entity @s[scores={teleport=15}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=15}]
execute if entity @s[scores={teleport=16}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=16}]
execute if entity @s[scores={teleport=17}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=17}]
execute if entity @s[scores={teleport=18}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=18}]
execute if entity @s[scores={teleport=19}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=19}]
execute if entity @s[scores={teleport=20}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=20}]
execute if entity @s[scores={teleport=21}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=21}]
execute if entity @s[scores={teleport=22}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=22}]
execute if entity @s[scores={teleport=23}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=23}]
execute if entity @s[scores={teleport=24}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=24}]
execute if entity @s[scores={teleport=25}] run tp @s @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=25}]

execute at @s run tag @e[limit=1,sort=nearest,tag=teleporter,type=marker,tag=teledest] add itpedtou

execute if entity @e[tag=itpedtou,tag=telesound,type=marker] run tag @s add dTPsound
execute if entity @e[tag=itpedtou,tag=teleparticle,type=marker] run tag @s add dTPparticle
tag @s add delayTP

#AI stuff
execute if entity @s[tag=ai] run function sprint_racer:ai/general/clear_old_ai_targets
execute if entity @s[tag=ai] run scoreboard players set @s aiBehavior 1
execute if entity @s[tag=ai] run scoreboard players set @s aiSubBehavior 0
execute if entity @s[tag=ai] run scoreboard players set @s aiSubBTimer 0

execute if entity @s[tag=ai1] run tag @e[tag=AImaster,type=armor_stand,scores={rNumber=1}] add dataTarget
execute if entity @s[tag=ai2] run tag @e[tag=AImaster,type=armor_stand,scores={rNumber=2}] add dataTarget
execute if entity @s[tag=ai3] run tag @e[tag=AImaster,type=armor_stand,scores={rNumber=3}] add dataTarget
execute if entity @s[tag=ai4] run tag @e[tag=AImaster,type=armor_stand,scores={rNumber=4}] add dataTarget
execute if entity @s[tag=ai5] run tag @e[tag=AImaster,type=armor_stand,scores={rNumber=5}] add dataTarget
execute if entity @s[tag=ai6] run tag @e[tag=AImaster,type=armor_stand,scores={rNumber=6}] add dataTarget
execute if entity @s[tag=ai7] run tag @e[tag=AImaster,type=armor_stand,scores={rNumber=7}] add dataTarget
execute if entity @s[tag=ai8] run tag @e[tag=AImaster,type=armor_stand,scores={rNumber=8}] add dataTarget
execute if entity @s[tag=ai9] run tag @e[tag=AImaster,type=armor_stand,scores={rNumber=9}] add dataTarget
execute if entity @s[tag=ai] run scoreboard players operation @e[tag=dataTarget,type=armor_stand] lastTeleport = @s lastTeleport
execute if entity @s[tag=ai] run tag @e[tag=dataTarget,type=armor_stand] remove dataTarget


tag @e[tag=itpedtou,type=marker] remove itpedtou
tag @e[tag=ugonnatpme,type=marker,distance=..10] remove ugonnatpme