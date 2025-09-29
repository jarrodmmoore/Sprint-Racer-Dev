#spawn the thing
#stock mannequins
execute if entity @s[scores={aiEntity=-9}] run function sprint_racer:ai/general/respawn/entity_type_mannequin {texture:"entity/player/slim/makena",type:"slim"}
execute if entity @s[scores={aiEntity=-8}] run function sprint_racer:ai/general/respawn/entity_type_mannequin {texture:"entity/player/wide/efe",type:"wide"}
execute if entity @s[scores={aiEntity=-7}] run function sprint_racer:ai/general/respawn/entity_type_mannequin {texture:"entity/player/wide/zuri",type:"wide"}
execute if entity @s[scores={aiEntity=-6}] run function sprint_racer:ai/general/respawn/entity_type_mannequin {texture:"entity/player/slim/sunny",type:"slim"}
execute if entity @s[scores={aiEntity=-5}] run function sprint_racer:ai/general/respawn/entity_type_mannequin {texture:"entity/player/wide/ari",type:"wide"}
execute if entity @s[scores={aiEntity=-4}] run function sprint_racer:ai/general/respawn/entity_type_mannequin {texture:"entity/player/wide/noor",type:"wide"}
execute if entity @s[scores={aiEntity=-3}] run function sprint_racer:ai/general/respawn/entity_type_mannequin {texture:"entity/player/slim/kai",type:"slim"}
execute if entity @s[scores={aiEntity=-2}] run function sprint_racer:ai/general/respawn/entity_type_mannequin {texture:"entity/player/slim/alex",type:"slim"}
execute if entity @s[scores={aiEntity=-1}] run function sprint_racer:ai/general/respawn/entity_type_mannequin {texture:"entity/player/wide/steve",type:"wide"}
#default zombie
execute if entity @s[scores={aiEntity=0..1}] run function sprint_racer:ai/general/respawn/entity_type_1
#wacky entities
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
execute if entity @s[scores={aiEntity=18}] run function sprint_racer:ai/general/respawn/entity_type_18
#credits mannequins
execute if entity @s[scores={aiEntity=1001..}] run function sprint_racer:ai/general/respawn/entity_type_1000s