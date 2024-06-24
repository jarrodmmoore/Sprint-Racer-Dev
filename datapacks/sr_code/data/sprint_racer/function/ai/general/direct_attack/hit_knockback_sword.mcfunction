effect give @e[tag=hit_target] resistance 1 0 true
effect give @e[tag=hit_target,scores={resTime=1..}] resistance 1 1 true

#effect give @e[tag=hit_target,tag=!undead] instant_damage 1 1 true
#effect give @e[tag=hit_target,tag=undead] instant_health 1 1 true
damage @e[tag=hit_target,limit=1] 8 mob_attack by @s from @s

scoreboard players operation @e[tag=hit_target] attackerID = @s playerID
scoreboard players set @e[tag=hit_target] attackTime 100

execute if entity @e[tag=hit_target,tag=ai] run scoreboard players operation @s rNumber = @e[tag=random,sort=random,limit=1,scores={rNumber=1..8}] rNumber
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=1}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[5.0d,0.4d,0.0d]}
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=2}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[0.0d,0.4d,5.0d]}
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=3}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[-5.0d,0.4d,0.0d]}
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=4}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[0.0d,0.4d,-5.0d]}
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=5}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[2.5d,0.4d,2.5d]}
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=6}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[-2.5d,0.4d,2.5d]}
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=7}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[-2.5d,0.4d,-2.5d]}
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=8}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[2.5d,0.4d,-2.5d]}

playsound minecraft:item.shield.break master @a

scoreboard players set @s inputCooldown 15
scoreboard players remove @s aiHasItem4 1
scoreboard players remove @s aiHasNormal 1
scoreboard players remove @s aiHasMelee 1

scoreboard players set @s[scores={aiHasItem4=1..}] aiHoldingItem 4
scoreboard players set @s[scores={aiHasItem4=1..}] aiActICooldown 10

scoreboard players set @s[scores={aiHasItem4=..0}] aiHoldingItem 0