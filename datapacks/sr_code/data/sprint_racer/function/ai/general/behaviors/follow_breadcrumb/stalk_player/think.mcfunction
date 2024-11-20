#more likely to stalk players when at high HP
scoreboard players set @s math -1000
scoreboard players operation @s math += @s hitboxHP

#more likely to stalk players when we have good combat items
execute if entity @s[scores={aiHasDefense=1..}] run scoreboard players add @s math 5
execute if entity @s[scores={aiHasProjectile=1..}] run scoreboard players add @s math 3
execute if entity @s[scores={aiHasMelee=1..}] run scoreboard players add @s math 8
execute if entity @s[scores={aiHasElite=1..}] run scoreboard players add @s math 5

#less likely to stalk players if we're easy or normal difficulty
scoreboard players remove @s[scores={aiSkill=1}] math 6
scoreboard players remove @s[scores={aiSkill=2}] math 3

#less likely to stalk if we're in lives elimination mode
execute if entity @s[tag=ai_fearful] run scoreboard players remove @s math 5

#DEV
#tellraw @a ["",{"score":{"name":"@s","objective":"math"}}]

scoreboard players operation @s math2 = @e[limit=1,sort=random,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] rNumber
execute if score @s math >= @s math2 run function sprint_racer:ai/general/behaviors/follow_breadcrumb/stalk_player/check
execute if score @s math >= @s math2 if score @s math matches 32.. run scoreboard players add @s AIBC_engagemt 25