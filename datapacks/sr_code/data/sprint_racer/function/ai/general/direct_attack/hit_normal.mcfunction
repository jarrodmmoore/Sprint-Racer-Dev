effect give @e[tag=hit_target] resistance 1 0 true
effect give @e[tag=hit_target,scores={resistTime=1..}] resistance 1 1 true

#effect give @e[tag=hit_target,tag=!undead] instant_damage 1 0 true
#effect give @e[tag=hit_target,tag=undead] instant_health 1 0 true
execute unless score @s aiBattleBasherDurability matches 1.. run damage @e[tag=hit_target,limit=1] 3 mob_attack by @s from @s
execute if score @s aiBattleBasherDurability matches 1.. run damage @e[tag=hit_target,limit=1] 5 mob_attack by @s from @s
scoreboard players remove @s[scores={aiBattleBasherDurability=1..}] aiBattleBasherDurability 1

scoreboard players operation @e[tag=hit_target] attackerID = @s playerID
scoreboard players set @e[tag=hit_target] attackTime 100

execute if entity @e[tag=hit_target,tag=ai] run scoreboard players operation @s rNumber = @e[tag=random,x=1548,y=155,z=406,distance=..1,sort=random,limit=1,scores={rNumber=1..8}] rNumber
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=1}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[0.6d,0.4d,0.0d]}
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=2}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[0.0d,0.4d,0.6d]}
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=3}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[-0.6d,0.4d,0.0d]}
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=4}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[0.0d,0.4d,-0.6d]}
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=5}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[0.3d,0.4d,0.3d]}
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=6}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[-0.3d,0.4d,0.3d]}
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=7}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[-0.3d,0.4d,-0.3d]}
execute if entity @e[tag=hit_target,tag=ai] if entity @s[scores={rNumber=8}] as @e[tag=hit_target,tag=!noknockback] run data merge entity @s {Motion:[0.3d,0.4d,-0.3d]}