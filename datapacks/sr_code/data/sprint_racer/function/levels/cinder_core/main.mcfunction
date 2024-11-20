function sprint_racer:levels/cinder_core/map

#fans
execute as @e[tag=activeplayer] at @s if block ~ ~-3 ~ minecraft:dispenser run function sprint_racer:levels/cinder_core/get_levitated_0
execute as @e[tag=activeplayer] at @s if block ~ ~-2 ~ minecraft:dispenser run function sprint_racer:levels/cinder_core/get_levitated_1
execute as @e[tag=activeplayer] at @s if block ~ ~-1 ~ minecraft:dispenser run function sprint_racer:levels/cinder_core/get_levitated_2

#lose fan levitation above purple wool
execute as @e[tag=activeplayer,scores={elytraTimer=..0}] at @s if block ~ 6 ~ minecraft:purple_wool run effect clear @s minecraft:levitation

#slow AI down on the fans and ice for fairness
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=noRubberBand] run scoreboard players set @e[tag=ai,limit=9] aiRubberBand 0
execute as @e[tag=ai,scores={check=3}] at @s if block ~ 6 ~ minecraft:pink_wool run scoreboard players set @s moveSpeed 0
execute as @e[tag=ai,scores={check=3}] at @s if block ~ 6 ~ minecraft:pink_wool run scoreboard players set @s rateAccel 0
execute as @e[tag=ai,scores={check=3}] at @s if block ~ 6 ~ minecraft:pink_wool run scoreboard players set @s aiRubberBand -2
#execute as @e[tag=ai] at @s if block ~ ~-.6 ~ minecraft:blue_ice run scoreboard players set @s aiRubberBand -2

#fan visuals and sound
execute positioned -1055 33 -1036 if entity @a[sort=nearest,distance=..20] run function sprint_racer:levels/cinder_core/fan_visual
execute positioned -1046 30 -1042 if entity @a[sort=nearest,distance=..20] run function sprint_racer:levels/cinder_core/fan_visual
execute positioned -1036 27 -1040 if entity @a[sort=nearest,distance=..20] run function sprint_racer:levels/cinder_core/fan_visual

#slight nausea effect to simulate heat waves
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] GTplatTimer 1
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=halftick] GTplatTimer 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={GTplatTimer=49..}] GTplatTimer 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={GTplatTimer=20..21}] run effect give @a[gamemode=adventure,scores={coord_y=..310000}] minecraft:nausea 5 1 true

#die on magma
execute as @a[tag=playing,gamemode=adventure,scores={hp=1..},nbt={OnGround:1b}] at @s if block ~ ~-1 ~ magma_block run function sprint_racer:levels/sakura_city/respawn_general
execute as @e[tag=ai,scores={hitboxHP=1000..}] at @s if block ~ ~-1 ~ magma_block run function sprint_racer:ai/general/die