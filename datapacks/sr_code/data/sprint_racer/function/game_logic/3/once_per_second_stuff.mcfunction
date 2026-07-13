#this stuff is only run once per second for performance
execute if entity @s[tag=!optNoItems,tag=!optItemsR] run function sprint_racer:items/container_check
execute unless entity @s[tag=!optNoItems,tag=!optItemsR] run function sprint_racer:items/container_check_itemless

#new rank calculation algorithm!
execute if entity @s[tag=!moretick] run function sprint_racer:game_logic/3/fast_rank_calc/_start

#ai data transfer
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] run function sprint_racer:game_logic/3/master_send_data_to_entity

#show one of the current leaders at random
tag @e[tag=displayViable] remove displayViable
tag @e[tag=gotRank,scores={battlePos=1}] add displayViable
execute if entity @e[tag=displayViable] run function sprint_racer:game_logic/3/lead_display_find_next
execute as @e[limit=1,sort=random,tag=displayViable,scores={KOs=1..,leadDisplayDelay=..0}] at @s run function sprint_racer:game_logic/3/show_position/sidebar_leader
tag @e[tag=displayViable] remove displayViable

execute if entity @s[tag=optBalance] run function sprint_racer:items/battle_balance/_index