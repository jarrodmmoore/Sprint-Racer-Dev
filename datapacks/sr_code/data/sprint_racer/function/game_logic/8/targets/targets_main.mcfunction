execute if entity @s[scores={currentTimeMsec=0,gameTime=140..,timeRemaining=1..}] run function sprint_racer:game_logic/8/targets/target_spawn_check

#prevent targets from de-spawning only while in this gamemode, otherwise they will dissappear automatically after a delay
scoreboard players set @e[tag=targetStay] lifespan 20
scoreboard players set @e[tag=targetVisual] lifespan 20

execute as @e[type=snowball,tag=targetVisual] at @s unless entity @e[tag=taTargetCore,type=magma_cube,distance=..1] run kill @s

#alternate target visuals, these are cool but kinda laggy and jank
#execute as @a[limit=5,sort=random,gamemode=!creative] at @s positioned ^ ^ ^8.8 at @e[limit=3,sort=nearest,tag=taTargetCore,type=magma_cube] positioned ~ ~.5 ~ facing entity @s eyes run function sprint_racer:game_logic/8/targets/particles
#execute as @a[limit=5,sort=random,gamemode=!creative] at @s at @e[limit=3,sort=nearest,tag=taTargetCore,type=magma_cube,distance=..10] positioned ~ ~.5 ~ facing entity @s eyes run function sprint_racer:game_logic/8/targets/particles_nearby

#bossbar display
execute if score #bbPersonalize value matches 2 if entity @s[scores={gameTime=51..}] run bossbar set minecraft:menutimer players @a[tag=miniHUD]
execute unless score #bbPersonalize value matches 2 if entity @s[scores={gameTime=51..}] run bossbar set minecraft:menutimer players @a
function sprint_racer_language:_dlc_1/gameplay/ta_update_target_bossbar


#stuff that breaks targets
execute as @a[tag=activeplayer] at @s run tag @e[tag=taTargetCore,type=magma_cube,distance=..2] add targetHit
#execute as @e[type=fireball] at @s if entity @e[tag=taTargetCore,type=magma_cube,distance=..3] run kill @s
execute as @e[tag=missile,type=armor_stand] at @s if entity @e[tag=taTargetCore,type=magma_cube,distance=..2] at @s run function sprint_racer:items/item_tick/missile_explode_target
execute as @e[type=snowball,tag=!targetVisual] at @s run tag @e[tag=taTargetCore,type=magma_cube,distance=..4] add targetHit
execute as @e[type=tnt,scores={age=1..}] at @s if entity @e[tag=taTargetCore,type=magma_cube,distance=..3] run scoreboard players set @s age 100

#repeat stuff next tick if in halftick mode for better accuracy
execute if entity @s[tag=halftick] run schedule function sprint_racer:game_logic/8/targets/halftick_extra_check 1t

#targets explode when they have the targetHit tag
execute if entity @s[scores={gameTime=165..}] as @e[tag=taTargetCore,type=magma_cube] at @s run function sprint_racer:game_logic/8/targets/hit_detect