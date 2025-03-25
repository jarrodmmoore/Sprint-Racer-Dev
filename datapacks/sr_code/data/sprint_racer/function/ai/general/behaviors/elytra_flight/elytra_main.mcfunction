execute if entity @s[scores={elytraTimer=1}] run function sprint_racer:ai/general/clear_old_ai_targets
execute if entity @s[scores={elytraTimer=1}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,DisabledSlots:4144959,Tags:["elytraGuide","gimmeTag","needsDirection"],equipment:{chest:{id:"minecraft:elytra",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{vanishing_curse:1},"minecraft:enchantment_glint_override":false}}}}
execute if entity @s[scores={elytraTimer=1}] run function sprint_racer:ai/general/behaviors/elytra_flight/give_elytra_tag

scoreboard players set @s aiStuckTime 0

execute if entity @s[tag=ai1] run tag @e[tag=elytraG1,type=armor_stand] add myElytra
execute if entity @s[tag=ai2] run tag @e[tag=elytraG2,type=armor_stand] add myElytra
execute if entity @s[tag=ai3] run tag @e[tag=elytraG3,type=armor_stand] add myElytra
execute if entity @s[tag=ai4] run tag @e[tag=elytraG4,type=armor_stand] add myElytra
execute if entity @s[tag=ai5] run tag @e[tag=elytraG5,type=armor_stand] add myElytra
execute if entity @s[tag=ai6] run tag @e[tag=elytraG6,type=armor_stand] add myElytra
execute if entity @s[tag=ai7] run tag @e[tag=elytraG7,type=armor_stand] add myElytra
execute if entity @s[tag=ai8] run tag @e[tag=elytraG8,type=armor_stand] add myElytra
execute if entity @s[tag=ai9] run tag @e[tag=elytraG9,type=armor_stand] add myElytra
scoreboard players set @e[tag=myElytra,type=armor_stand] lifespan 7

scoreboard players add @s[scores={elytraTimer=..99}] elytraTimer 1
#execute if score #halftick value matches 1 run scoreboard players add @s[scores={elytraTimer=3..99}] elytraTimer 1

execute if entity @s[scores={elytraTimer=..30}] run particle cloud ~ ~ ~ 0.2 0.2 0.2 0 2 force

#follow the elytra, pretend we're flying
execute if entity @s[scores={elytraTimer=3..}] run tp @s @e[limit=1,sort=nearest,tag=myElytra]

#slow falling in case flight fails
effect give @s slow_falling 5 0 false

#give elytra via data merge
execute if entity @s[scores={elytraTimer=30..31}] as @e[tag=myElytra] run data merge entity @s {FallFlying:1b}

#particles
execute as @e[tag=myElytra,nbt={FallFlying:1b}] at @s run particle instant_effect ^.8 ^.2 ^-2 0.0 0.0 0.0 0 1 force
execute as @e[tag=myElytra,nbt={FallFlying:1b}] at @s run particle instant_effect ^-.8 ^.2 ^-2 0.0 0.0 0.0 0 1 force

#remove elytra
execute if entity @s[scores={elytraTimer=10..},tag=inWater] run tag @s add removeElytra
execute if entity @s[scores={elytraTimer=10..}] if entity @e[tag=myElytra,nbt={OnGround:1b}] run tag @s add removeElytra
execute if entity @s[scores={elytraTimer=10..}] unless entity @e[tag=myElytra] run tag @s add removeElytra
execute if entity @s[tag=removeElytra] run scoreboard players set @s elytraTimer 0
execute if entity @s[tag=removeElytra] run scoreboard players set @s rateAccel 300
execute if entity @s[tag=removeElytra] run scoreboard players set @s rateDecel 0
execute if entity @s[tag=removeElytra] run scoreboard players set @s aiHasFirework 0
execute if entity @s[tag=removeElytra] run tag @s remove elytra_specific_2
execute if entity @s[tag=removeElytra,nbt={OnGround:1b}] run effect clear @s minecraft:slow_falling

#set direction... be precise!
execute if entity @s[scores={elytraTimer=40..}] run tag @s add elytra_new_dir

#movement logic depends on gamemode
execute if entity @s[tag=elytra_new_dir] run tag @e[tag=myElytra,type=armor_stand] add needsDirection
execute if entity @s[tag=elytra_new_dir] as @e[tag=myElytra,type=armor_stand,limit=1,sort=nearest] run function sprint_racer:ai/general/behaviors/elytra_flight/elytra_store_motion_1
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=3}] run function sprint_racer:ai/general/behaviors/elytra_flight/race_pick_target
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=3}] run function sprint_racer:ai/general/behaviors/elytra_flight/battle_pick_target
execute if entity @s[tag=elytra_new_dir,tag=!fireworkBoost] as @e[tag=myElytra,type=armor_stand,limit=1,sort=nearest] run function sprint_racer:ai/general/behaviors/elytra_flight/elytra_store_motion_2
execute if entity @s[tag=elytra_new_dir,tag=fireworkBoost] at @s run function sprint_racer:ai/general/behaviors/elytra_flight/firework_boost
tag @s[tag=elytra_new_dir] remove elytra_new_dir

execute if entity @s[tag=removeElytra] run scoreboard players set @s aiSubBehavior 0
execute if entity @s[tag=removeElytra] run scoreboard players set @s aiSubBTimer 0
execute if entity @s[tag=removeElytra] run scoreboard players set @s aiBehavior 1
execute if entity @s[tag=removeElytra] run kill @e[tag=myElytra]
tag @s[tag=removeElytra] remove removeElytra

tag @e[tag=myElytra] remove myElytra