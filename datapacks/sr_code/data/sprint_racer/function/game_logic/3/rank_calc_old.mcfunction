#note: playerCountC counts the number of unique scores that exist, NOT the player count
#unlike race mode, two or more players can share the same rank here (ex: "1st", "2nd")

#we have to worry about AI entities and also dead players here... woo

#OLD CODE, not as efficient
#execute as @a[tag=playing] run scoreboard players operation @s dummyKOs = @s KOs
#execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] run scoreboard players operation @s dummyKOs = @s KOs
#scoreboard players operation @a[tag=playing] dummyKOs -= @s dummyKOs
#scoreboard players operation @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] dummyKOs -= @s dummyKOs
#tag @a[tag=playing,scores={dummyKOs=0}] add thatsme
#tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={dummyKOs=0}] add thatsme

#NEW CODE, better
scoreboard players operation #battle_pos math = @s battlePos
scoreboard players operation #player_count_c math = @s playerCountC
scoreboard players operation #ko_check math = @s dummyKOs
execute as @a[tag=playing] if score @s KOs = #ko_check math run tag @s add thatsme
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] if score @s KOs = #ko_check math run tag @s add thatsme

#assign battlePos to players
scoreboard players operation @a[tag=thatsme] battlePos = #battle_pos math
scoreboard players operation @e[tag=thatsme,type=armor_stand] battlePos = #battle_pos math

#OLD CODE, did not skip ranks if there were ties
#execute if entity @a[tag=thatsme,limit=1] run tag @s add foundEm
#execute if entity @e[tag=thatsme,limit=1] run tag @s add foundEm
#execute if entity @s[tag=foundEm] run scoreboard players add @s battlePos 1
#execute if entity @s[tag=foundEm] run scoreboard players add @s playerCountC 1

#NEW CODE, skips ranks after ties
execute as @a[tag=thatsme] run scoreboard players add #battle_pos math 1
execute as @a[tag=thatsme] run scoreboard players add #player_count_c math 1
execute as @e[tag=thatsme,type=armor_stand] run scoreboard players add #battle_pos math 1
execute as @e[tag=thatsme,type=armor_stand] run scoreboard players add #player_count_c math 1
scoreboard players operation @s battlePos = #battle_pos math
scoreboard players operation @s playerCountC = #player_count_c math

tag @a[tag=thatsme] add ranked
tag @e[tag=thatsme,type=armor_stand] add ranked
#tag @s remove foundEm

tag @e[tag=thatsme,type=armor_stand] remove thatsme
tag @a[tag=thatsme] remove thatsme

#execute unless entity @a[tag=playing,scores={dummyKOs=-1}] unless entity @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={dummyKOs=-1}] run scoreboard players remove @s dummyKOs 1
scoreboard players remove @s dummyKOs 1

#using the magic of recursion, keep calculating until every player is accounted for...
execute if entity @s[scores={dummyKOs=0..}] if entity @a[tag=playing,limit=1,tag=!ranked,scores={KOs=0..100}] run tag @s add loopThisPlease
execute if entity @s[scores={dummyKOs=0..}] if entity @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,limit=1,type=armor_stand,tag=!ranked,scores={KOs=0..100}] run tag @s add loopThisPlease
execute if entity @s[tag=loopThisPlease] run function sprint_racer:game_logic/3/rank_calc_looper