#cheat code overrides for parameters
execute if entity @e[limit=1,type=armor_stand,tag=54a,tag=cheats] run function sprint_racer:ai/general/respawn/_custom_ai_type

execute if entity @s[scores={aiEntity=1001..1009}] run function sprint_racer:ai/general/respawn/entity_type_1000s
execute unless entity @s[scores={aiEntity=2..}] run function sprint_racer:ai/general/respawn/entity_type_1
execute if entity @s[scores={aiEntity=2}] run function sprint_racer:ai/general/respawn/entity_type_2
execute if entity @s[scores={aiEntity=3}] run function sprint_racer:ai/general/respawn/entity_type_3
execute if entity @s[scores={aiEntity=4}] run function sprint_racer:ai/general/respawn/entity_type_4
execute if entity @s[scores={aiEntity=5}] run function sprint_racer:ai/general/respawn/entity_type_5
execute if entity @s[scores={aiEntity=6}] run function sprint_racer:ai/general/respawn/entity_type_6
execute if entity @s[scores={aiEntity=7}] run function sprint_racer:ai/general/respawn/entity_type_7
execute if entity @s[scores={aiEntity=8}] run function sprint_racer:ai/general/respawn/entity_type_8
execute if entity @s[scores={aiEntity=9}] run function sprint_racer:ai/general/respawn/entity_type_9
execute if entity @s[scores={aiEntity=10}] run function sprint_racer:ai/general/respawn/entity_type_10
execute if entity @s[scores={aiEntity=11}] run function sprint_racer:ai/general/respawn/entity_type_11
execute if entity @s[scores={aiEntity=12}] run function sprint_racer:ai/general/respawn/entity_type_12
execute if entity @s[scores={aiEntity=13}] run function sprint_racer:ai/general/respawn/entity_type_13
execute if entity @s[scores={aiEntity=14}] run function sprint_racer:ai/general/respawn/entity_type_14
execute if entity @s[scores={aiEntity=15}] run function sprint_racer:ai/general/respawn/entity_type_15
execute if entity @s[scores={aiEntity=16}] run function sprint_racer:ai/general/respawn/entity_type_16
execute if entity @s[scores={aiEntity=17}] run function sprint_racer:ai/general/respawn/entity_type_17
#insert more here...

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

execute if entity @e[tag=w,type=armor_stand,limit=1,scores={gameState=1}] as @e[tag=set_ai_no,limit=1] run function sprint_racer:game_logic/1/charity_item/_index
tag @e[tag=set_ai_no] remove set_ai_no

tag @s remove needRespawn