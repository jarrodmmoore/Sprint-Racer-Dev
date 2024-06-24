tag @e[tag=rNumberNOGO] remove rNumberNOGO

#pick a random direction
scoreboard players set @s aiDirection 1
scoreboard players operation @s aiDirection = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..8}] rNumber

#most of the time we'll use our bias instead of the random direction (so ais spread out more naturally?)
scoreboard players operation #random value = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..5}] rNumber
execute if score #random value matches ..4 if entity @s[scores={aiSpreadBias=1..8}] run scoreboard players operation @s aiDirection = @s aiSpreadBias

#pick a random distance from 0 to 5
scoreboard players set @s rNumber 1
execute if entity @s[scores={AIBC_spread=4}] run tag @e[tag=random,type=armor_stand,scores={rNumber=6}] add rNumberNOGO
execute if entity @s[scores={AIBC_spread=3}] run tag @e[tag=random,type=armor_stand,scores={rNumber=5..6}] add rNumberNOGO
execute if entity @s[scores={AIBC_spread=2}] run tag @e[tag=random,type=armor_stand,scores={rNumber=4..6}] add rNumberNOGO
execute if entity @s[scores={AIBC_spread=1}] run tag @e[tag=random,type=armor_stand,scores={rNumber=3..6}] add rNumberNOGO
scoreboard players operation @s rNumber = @e[tag=!rNumberNOGO,limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..6}] rNumber

execute if entity @s[scores={aiDirection=1}] rotated 0 0 run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/do_a_spread
execute if entity @s[scores={aiDirection=2}] rotated 45 0 run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/do_a_spread
execute if entity @s[scores={aiDirection=3}] rotated 90 0 run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/do_a_spread
execute if entity @s[scores={aiDirection=4}] rotated 135 0 run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/do_a_spread
execute if entity @s[scores={aiDirection=5}] rotated 180 0 run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/do_a_spread
execute if entity @s[scores={aiDirection=6}] rotated 225 0 run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/do_a_spread
execute if entity @s[scores={aiDirection=7}] rotated 270 0 run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/do_a_spread
execute if entity @s[scores={aiDirection=8}] rotated 315 0 run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/do_a_spread

scoreboard players reset @s aiDirection
scoreboard players reset @s rNumber

tag @e[tag=rNumberNOGO] remove rNumberNOGO