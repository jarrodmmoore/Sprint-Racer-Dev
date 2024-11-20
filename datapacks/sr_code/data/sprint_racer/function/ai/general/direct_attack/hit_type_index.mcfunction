tag @e[tag=!i_am_i,tag=!donttouchme,tag=activeplayer,distance=..3,limit=1,sort=nearest] add hit_target

execute if entity @s[scores={aiHoldingItem=4}] run tag @s add hit1
execute if entity @s[scores={aiHoldingItem=24}] run tag @s add hit2
execute if entity @s[scores={aiHoldingItem=41}] run tag @s add hit3

execute if entity @s[tag=!hit1,tag=!hit2,tag=!hit3] run function sprint_racer:ai/general/direct_attack/hit_normal
execute if entity @s[tag=hit1] run function sprint_racer:ai/general/direct_attack/hit_knockback_sword
execute if entity @s[tag=hit2] run function sprint_racer:ai/general/direct_attack/hit_fire_axe
execute if entity @s[tag=hit3] run function sprint_racer:ai/general/direct_attack/hit_dagger

execute if entity @s[tag=very_easy_ai,scores={aiSkill=..1}] run scoreboard players operation @s aiHitCooldown = @e[tag=random,x=1548,y=155,z=406,distance=..1,sort=random,type=armor_stand,limit=1,scores={rNumber=40..50}] rNumber
execute if entity @s[tag=!very_easy_ai,scores={aiSkill=..1}] run scoreboard players operation @s aiHitCooldown = @e[tag=random,x=1548,y=155,z=406,distance=..1,sort=random,type=armor_stand,limit=1,scores={rNumber=20..50}] rNumber
execute if entity @s[scores={aiSkill=2}] run scoreboard players operation @s aiHitCooldown = @e[tag=random,x=1548,y=155,z=406,distance=..1,sort=random,type=armor_stand,limit=1,scores={rNumber=10..40}] rNumber
execute if entity @s[tag=!tryhard,scores={aiSkill=3..}] run scoreboard players operation @s aiHitCooldown = @e[tag=random,x=1548,y=155,z=406,distance=..1,sort=random,type=armor_stand,limit=1,scores={rNumber=5..30}] rNumber
execute if entity @s[tag=tryhard,scores={aiSkill=3..}] run scoreboard players operation @s aiHitCooldown = @e[tag=random,x=1548,y=155,z=406,distance=..1,sort=random,type=armor_stand,limit=1,scores={rNumber=1..20}] rNumber

tag @s remove hit1
tag @s remove hit2
tag @s remove hit3

tag @e[tag=hit_target] remove hit_target