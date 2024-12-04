effect give @e[tag=hit_target,distance=..3] resistance 1 0 true
effect give @e[tag=hit_target,distance=..3,scores={resTime=1..}] resistance 1 1 true

#effect give @e[tag=hit_target,distance=..3,tag=!undead] instant_damage 1 1 true
#effect give @e[tag=hit_target,distance=..3,tag=undead] instant_health 1 1 true
damage @e[tag=hit_target,distance=..3,limit=1] 8 mob_attack by @s from @s

scoreboard players operation @e[tag=hit_target,distance=..3] attackerID = @s playerID
scoreboard players set @e[tag=hit_target,distance=..3] attackTime 100

execute if entity @e[tag=hit_target,distance=..3,tag=ai] run scoreboard players operation @s rNumber = @e[tag=random,x=1548,y=155,z=406,distance=..1,sort=random,limit=1,scores={rNumber=1..8}] rNumber
execute if entity @e[tag=hit_target,distance=..3,tag=ai] if entity @s[scores={rNumber=1}] as @e[tag=hit_target,distance=..3,tag=!noknockback] run data merge entity @s {Fire:100,Motion:[3.0d,0.4d,0.0d]}
execute if entity @e[tag=hit_target,distance=..3,tag=ai] if entity @s[scores={rNumber=2}] as @e[tag=hit_target,distance=..3,tag=!noknockback] run data merge entity @s {Fire:100,Motion:[0.0d,0.4d,3.0d]}
execute if entity @e[tag=hit_target,distance=..3,tag=ai] if entity @s[scores={rNumber=3}] as @e[tag=hit_target,distance=..3,tag=!noknockback] run data merge entity @s {Fire:100,Motion:[-3.0d,0.4d,0.0d]}
execute if entity @e[tag=hit_target,distance=..3,tag=ai] if entity @s[scores={rNumber=4}] as @e[tag=hit_target,distance=..3,tag=!noknockback] run data merge entity @s {Fire:100,Motion:[0.0d,0.4d,-3.0d]}
execute if entity @e[tag=hit_target,distance=..3,tag=ai] if entity @s[scores={rNumber=5}] as @e[tag=hit_target,distance=..3,tag=!noknockback] run data merge entity @s {Fire:100,Motion:[1.5d,0.4d,1.5d]}
execute if entity @e[tag=hit_target,distance=..3,tag=ai] if entity @s[scores={rNumber=6}] as @e[tag=hit_target,distance=..3,tag=!noknockback] run data merge entity @s {Fire:100,Motion:[-1.5d,0.4d,1.5d]}
execute if entity @e[tag=hit_target,distance=..3,tag=ai] if entity @s[scores={rNumber=7}] as @e[tag=hit_target,distance=..3,tag=!noknockback] run data merge entity @s {Fire:100,Motion:[-1.5d,0.4d,-1.5d]}
execute if entity @e[tag=hit_target,distance=..3,tag=ai] if entity @s[scores={rNumber=8}] as @e[tag=hit_target,distance=..3,tag=!noknockback] run data merge entity @s {Fire:100,Motion:[1.5d,0.4d,-1.5d]}

playsound minecraft:item.shield.break master @a

scoreboard players set @s inputCooldown 15
scoreboard players remove @s aiHasItem24 1
scoreboard players remove @s aiHasElite 1
scoreboard players remove @s aiHasMelee 1

scoreboard players set @s[scores={aiHasItem24=1..}] aiHoldingItem 24
scoreboard players set @s[scores={aiHasItem24=1..}] aiActICooldown 10

scoreboard players set @s[scores={aiHasItem24=..0}] aiHoldingItem 0