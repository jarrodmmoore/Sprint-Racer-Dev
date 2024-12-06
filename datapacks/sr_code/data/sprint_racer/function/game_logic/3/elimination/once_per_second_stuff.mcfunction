#this stuff is only run once per second for performance
execute if entity @s[tag=!optNoItems] run function sprint_racer:items/container_check
execute if entity @s[tag=optNoItems] run function sprint_racer:items/container_check_itemless

#COUNT KOs FOR RANK CALCULATION
#scoreboard players set @a[scores={KOs=101..}] KOs 100
#scoreboard players set @e[scores={KOs=101..}] KOs 100
#scoreboard players reset @a battlePos
#scoreboard players reset @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] battlePos
#tag @a[tag=ranked] remove ranked
#tag @e[tag=ranked] remove ranked
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] battlePos 1
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCountC 0

#start around the highest KO score and then work backwards to give ranks in the proper order
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 5
#execute if entity @e[scores={KOs=5..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 10
#execute if entity @a[scores={KOs=5..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 10
#execute if entity @e[scores={KOs=10..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 15
#execute if entity @a[scores={KOs=10..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 15
#execute if entity @e[scores={KOs=15..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 20
#execute if entity @a[scores={KOs=15..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 20
#execute if entity @e[scores={KOs=20..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 25
#execute if entity @a[scores={KOs=20..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 25
#execute if entity @e[scores={KOs=25..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 35
#execute if entity @a[scores={KOs=25..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 35
#execute if entity @e[scores={KOs=35..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 45
#execute if entity @a[scores={KOs=35..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 45
#execute if entity @e[scores={KOs=45..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 60
#execute if entity @a[scores={KOs=45..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 60
#execute if entity @e[scores={KOs=60..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 100
#execute if entity @a[scores={KOs=60..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] dummyKOs 100

#function sprint_racer:game_logic/3/rank_calc

#new calc algorithm
function sprint_racer:game_logic/3/fast_rank_calc/_start

#execute as @a[scores={battlePos=1..}] run scoreboard players operation @s battPosDisplay = @s battlePos
#execute as @a[scores={battlePos=1..}] run scoreboard players operation @s itemPosition = @s battPosDisplay
#execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={battlePos=1..}] run scoreboard players operation @s battPosDisplay = @s battlePos
#execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={battlePos=1..}] run scoreboard players operation @s itemPosition = @s battPosDisplay
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] run function sprint_racer:game_logic/3/master_send_data_to_entity

#show lives remaining for 4 players at random
scoreboard players operation @s math = @s currentTimeSec
scoreboard players set @s math2 3
scoreboard players operation @s math %= @s math2
execute if entity @s[scores={math=0}] run function sprint_racer:game_logic/3/elimination/random_sidebar

execute if entity @s[tag=optBalance] run function sprint_racer:items/battle_balance/_index