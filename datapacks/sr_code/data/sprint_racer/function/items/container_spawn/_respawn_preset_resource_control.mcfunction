scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @s itemchestSeedR

#clean up
tag @s remove custom_item_spawn

#don't spawn if we're banned
execute if entity @s[scores={rNumber=1}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo1] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=2}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo2] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=3}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo3] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=4}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo4] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=5}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo5] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=6}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo6] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=7}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo7] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=8}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo8] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=9}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo9] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=10}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo10] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=11}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo11] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=12}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo12] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=13}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo13] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=14}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo14] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=15}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo15] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=16}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo16] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=17}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo17] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=18}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo18] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=19}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo19] run scoreboard players set @s rNumber 0
execute if entity @s[scores={rNumber=20}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=banNo20] run scoreboard players set @s rNumber 0

#normal items
execute if entity @s[scores={rNumber=1..20}] run return run function sprint_racer:items/container_spawn/capsule_seeded_resource_control

#non-rng tables
execute if entity @s[scores={rNumber=21}] run return run function sprint_racer:items/container_spawn/enchanting_table
execute if entity @s[scores={rNumber=22}] run return run function sprint_racer:items/container_spawn/cake

#obliterator
#fishing rod
#fishing rod 2
#battle bat
#battle basher
#potato
#elite potato
#custom
execute if entity @s[scores={rNumber=23..99}] run return run function sprint_racer:items/container_spawn/capsule_seeded_resource_control

#custom, no capsule
execute if entity @s[scores={rNumber=100..}] run return run tag @s add custom_item_spawn


#item is banned, don't try to respawn
execute if entity @s[scores={rNumber=0}] run scoreboard players set @s itemBlockState 0