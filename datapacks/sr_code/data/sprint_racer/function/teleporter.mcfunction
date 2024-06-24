tag @e[limit=1,sort=nearest,tag=teleporter,tag=!teledest] add ugonnatpme

scoreboard players operation @s lastTeleport = @e[tag=ugonnatpme] teleport
scoreboard players operation @s teleport = @e[tag=ugonnatpme] teleport

execute if entity @e[tag=ugonnatpme,tag=telesound] run playsound minecraft:entity.enderman.teleport master @a
execute if entity @e[tag=ugonnatpme,tag=teleparticle] run particle falling_dust{block_state:"minecraft:magenta_concrete"} ~ ~1 ~ 0.5 0.5 0.5 1 50

#teleport to the nearest teleport destination on the same channel
tp @s[scores={teleport=1}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=1}]
tp @s[scores={teleport=2}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=2}]
tp @s[scores={teleport=3}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=3}]
tp @s[scores={teleport=4}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=4}]
tp @s[scores={teleport=5}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=5}]
tp @s[scores={teleport=6}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=6}]
tp @s[scores={teleport=7}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=7}]
tp @s[scores={teleport=8}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=8}]
tp @s[scores={teleport=9}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=9}]
tp @s[scores={teleport=10}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=10}]
tp @s[scores={teleport=11}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=11}]
tp @s[scores={teleport=12}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=12}]
tp @s[scores={teleport=13}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=13}]
tp @s[scores={teleport=14}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=14}]
tp @s[scores={teleport=15}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=15}]
tp @s[scores={teleport=16}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=16}]
tp @s[scores={teleport=17}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=17}]
tp @s[scores={teleport=18}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=18}]
tp @s[scores={teleport=19}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=19}]
tp @s[scores={teleport=20}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=20}]
tp @s[scores={teleport=21}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=21}]
tp @s[scores={teleport=22}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=22}]
tp @s[scores={teleport=23}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=23}]
tp @s[scores={teleport=24}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=24}]
tp @s[scores={teleport=25}] @e[limit=1,sort=nearest,tag=teleporter,tag=teledest,scores={teleport=25}]

tag @e[limit=1,sort=nearest,tag=teleporter,tag=teledest] add itpedtou

execute if entity @e[tag=itpedtou,tag=telesound] run tag @s add dTPsound
execute if entity @e[tag=itpedtou,tag=teleparticle] run tag @s add dTPparticle
tag @s add delayTP

#AI stuff
execute if entity @s[tag=ai] run function sprint_racer:ai/general/clear_old_ai_targets
execute if entity @s[tag=ai] run scoreboard players set @s aiBehavior 1
execute if entity @s[tag=ai] run scoreboard players set @s aiSubBehavior 0
execute if entity @s[tag=ai] run scoreboard players set @s aiSubBTimer 0

execute if entity @s[tag=ai1] run tag @e[tag=AImaster,scores={rNumber=1}] add dataTarget
execute if entity @s[tag=ai2] run tag @e[tag=AImaster,scores={rNumber=2}] add dataTarget
execute if entity @s[tag=ai3] run tag @e[tag=AImaster,scores={rNumber=3}] add dataTarget
execute if entity @s[tag=ai4] run tag @e[tag=AImaster,scores={rNumber=4}] add dataTarget
execute if entity @s[tag=ai5] run tag @e[tag=AImaster,scores={rNumber=5}] add dataTarget
execute if entity @s[tag=ai6] run tag @e[tag=AImaster,scores={rNumber=6}] add dataTarget
execute if entity @s[tag=ai7] run tag @e[tag=AImaster,scores={rNumber=7}] add dataTarget
execute if entity @s[tag=ai8] run tag @e[tag=AImaster,scores={rNumber=8}] add dataTarget
execute if entity @s[tag=ai9] run tag @e[tag=AImaster,scores={rNumber=9}] add dataTarget
execute if entity @s[tag=ai] run scoreboard players operation @e[tag=dataTarget] lastTeleport = @s lastTeleport
execute if entity @s[tag=ai] run tag @e[tag=dataTarget] remove dataTarget


tag @e[tag=itpedtou] remove itpedtou
tag @e[tag=ugonnatpme] remove ugonnatpme