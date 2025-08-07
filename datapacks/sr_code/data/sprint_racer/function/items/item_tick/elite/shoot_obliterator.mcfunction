#clear @s observer[custom_data~{eliteObliterator:1b}] 1

#pick targets
tag @s add beamIgnore
#teamplay with no friendly fire: don't hit teammates
execute if entity @s[tag=playerCyan] unless entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=14a] run tag @e[tag=playerCyan] add beamIgnore
execute if entity @s[tag=playerOrange] unless entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=14a] run tag @e[tag=playerOrange] add beamIgnore

#raycast for beam
scoreboard players set #test value 0
execute unless entity @s[tag=playerCyan] positioned ~ ~1.8 ~ positioned ^ ^ ^1 run function sprint_racer:items/item_tick/elite/shoot_obliterator_orange_raycast
execute if entity @s[tag=playerCyan] positioned ~ ~1.8 ~ positioned ^ ^ ^1 run function sprint_racer:items/item_tick/elite/shoot_obliterator_cyan_raycast

#damage anyone hit by the raycast
scoreboard players operation #checkID value = @s playerID
execute as @e[tag=getBeamed] run function sprint_racer:items/item_tick/elite/shoot_obliterator_hit_player

#feedback
playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1.5 0.8
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1.5 0.9

#cleanup
tag @e[tag=beamIgnore] remove beamIgnore

#long cooldown...
scoreboard players set @s inputCooldown 40