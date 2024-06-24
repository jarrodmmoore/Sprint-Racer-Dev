#this stuff is only run once per second for performance
execute if entity @s[tag=!optNoItems] run function sprint_racer:items/container_check
execute if entity @s[tag=optNoItems] run function sprint_racer:items/container_check_itemless

#new rank calculation algorithm!
execute if entity @s[tag=!moretick] run function sprint_racer:game_logic/3/fast_rank_calc/_start

#COUNT KOs FOR RANK CALCULATION
#scoreboard players set @a[scores={KOs=101..}] KOs 100
#scoreboard players set @e[scores={KOs=101..}] KOs 100
#scoreboard players reset @a battlePos
#scoreboard players reset @e[tag=AImaster,type=armor_stand] battlePos
#tag @a[tag=ranked] remove ranked
#tag @e[tag=ranked,type=armor_stand] remove ranked
#scoreboard players set @s battlePos 1
#scoreboard players set @s playerCountC 0

#start around the highest KO score and then work backwards to give ranks in the proper order
#scoreboard players set @s dummyKOs 5
#execute if entity @e[limit=1,type=armor_stand,scores={KOs=5..}] run scoreboard players set @s dummyKOs 10
#execute if entity @a[limit=1,scores={KOs=5..}] run scoreboard players set @s dummyKOs 10
#execute if entity @e[limit=1,type=armor_stand,scores={KOs=10..}] run scoreboard players set @s dummyKOs 15
#execute if entity @a[limit=1,scores={KOs=10..}] run scoreboard players set @s dummyKOs 15
#execute if entity @e[limit=1,type=armor_stand,scores={KOs=15..}] run scoreboard players set @s dummyKOs 20
#execute if entity @a[limit=1,scores={KOs=15..}] run scoreboard players set @s dummyKOs 20
#execute if entity @e[limit=1,type=armor_stand,scores={KOs=20..}] run scoreboard players set @s dummyKOs 25
#execute if entity @a[limit=1,scores={KOs=20..}] run scoreboard players set @s dummyKOs 25
#execute if entity @e[limit=1,type=armor_stand,scores={KOs=25..}] run scoreboard players set @s dummyKOs 35
#execute if entity @a[limit=1,scores={KOs=25..}] run scoreboard players set @s dummyKOs 35
#execute if entity @e[limit=1,type=armor_stand,scores={KOs=35..}] run scoreboard players set @s dummyKOs 45
#execute if entity @a[limit=1,scores={KOs=35..}] run scoreboard players set @s dummyKOs 45
#execute if entity @e[limit=1,type=armor_stand,scores={KOs=45..}] run scoreboard players set @s dummyKOs 60
#execute if entity @a[limit=1,scores={KOs=45..}] run scoreboard players set @s dummyKOs 60
#execute if entity @e[limit=1,type=armor_stand,scores={KOs=60..}] run scoreboard players set @s dummyKOs 100
#execute if entity @a[limit=1,scores={KOs=60..}] run scoreboard players set @s dummyKOs 100

#function sprint_racer:game_logic/3/rank_calc

#execute as @a[scores={battlePos=1..}] run scoreboard players operation @s battPosDisplay = @s battlePos
#execute as @a[scores={battlePos=1..}] run scoreboard players operation @s itemPosition = @s battPosDisplay
#execute as @e[tag=AImaster,type=armor_stand,scores={battlePos=1..}] run scoreboard players operation @s battPosDisplay = @s battlePos
#execute as @e[tag=AImaster,type=armor_stand,scores={battlePos=1..}] run scoreboard players operation @s itemPosition = @s battPosDisplay
execute as @e[tag=AImaster,type=armor_stand] run function sprint_racer:game_logic/3/master_send_data_to_entity

#show one of the current leaders at random
tag @e[tag=displayViable] remove displayViable
tag @e[tag=gotRank,scores={battlePos=1}] add displayViable
execute if entity @e[tag=displayViable] run function sprint_racer:game_logic/3/lead_display_find_next
execute as @e[limit=1,sort=random,tag=displayViable,scores={KOs=1..,leadDisplayDelay=..0}] at @s run function sprint_racer:game_logic/3/show_position/sidebar_leader
tag @e[tag=displayViable] remove displayViable

execute if entity @s[tag=optBalance] run function sprint_racer:items/battle_balance/_index