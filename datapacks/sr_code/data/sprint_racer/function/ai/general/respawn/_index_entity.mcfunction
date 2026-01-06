#executed by the armor stand corresponding to an ai player

#####
#spawn a thing
function sprint_racer:ai/general/respawn/_index_entity_spawn
#####

#any drowned lingering in the world? get rid of them
kill @e[tag=!cminezombie,type=drowned]

execute if entity @s[scores={rNumber=1}] run function sprint_racer:ai/general/respawn/number_specific/1
execute if entity @s[scores={rNumber=2}] run function sprint_racer:ai/general/respawn/number_specific/2
execute if entity @s[scores={rNumber=3}] run function sprint_racer:ai/general/respawn/number_specific/3
execute if entity @s[scores={rNumber=4}] run function sprint_racer:ai/general/respawn/number_specific/4
execute if entity @s[scores={rNumber=5}] run function sprint_racer:ai/general/respawn/number_specific/5
execute if entity @s[scores={rNumber=6}] run function sprint_racer:ai/general/respawn/number_specific/6
execute if entity @s[scores={rNumber=7}] run function sprint_racer:ai/general/respawn/number_specific/7
execute if entity @s[scores={rNumber=8}] run function sprint_racer:ai/general/respawn/number_specific/8
execute if entity @s[scores={rNumber=9}] run function sprint_racer:ai/general/respawn/number_specific/9

#some very special name overrides :)
execute if score @s aiEntity matches 6 as @e[tag=set_ai_no] run data modify entity @s CustomName set value {text:"\uE710",color:white}
execute if score @s aiEntity matches 18 as @e[tag=set_ai_no] run data modify entity @s CustomName set value {text:"\uE093",color:white}

#inherit values from AImaster
scoreboard players operation @e[tag=set_ai_no,limit=1] check = @s check
scoreboard players operation @e[tag=set_ai_no,limit=1] lap = @s lap
scoreboard players operation @e[tag=set_ai_no,limit=1] lapFake = @s lapFake
scoreboard players operation @e[tag=set_ai_no,limit=1] aiSkill = @s aiSkill
scoreboard players operation @e[tag=set_ai_no,limit=1] playerID = @s playerID
scoreboard players operation @e[tag=set_ai_no,limit=1] KOs = @s KOs

#skill override...
scoreboard players set @e[tag=set_ai_no,tag=tryhard,limit=1] aiSkill 3
scoreboard players set @e[tag=set_ai_no,tag=stupid_ugly,limit=1] aiSkill 1

#IMPORTANT, initializes scoreboard values on new entity so we can be a productive member of society
execute as @e[tag=set_ai_no,limit=1] run function sprint_racer:ai/general/respawn/initialize_new_entity

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,scores={gameState=1}] as @e[tag=set_ai_no,limit=1] run function sprint_racer:game_logic/1/charity_item/_index
tag @e[tag=set_ai_no] remove set_ai_no

tag @s remove needRespawn