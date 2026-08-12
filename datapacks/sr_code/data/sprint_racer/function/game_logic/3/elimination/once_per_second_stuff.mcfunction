#this stuff is only run once per second for performance
execute if entity @s[tag=!optNoItems,tag=!optItemsR] run function sprint_racer:items/container_check
execute unless entity @s[tag=!optNoItems,tag=!optItemsR] run function sprint_racer:items/container_check_itemless

#new calc algorithm
function sprint_racer:game_logic/3/fast_rank_calc/_start

#ai data transfer
execute as @e[type=armor_stand,tag=AImaster,x=1548,y=155,z=406,distance=..1] run function sprint_racer:game_logic/3/master_send_data_to_entity

#show lives remaining for 4 players at random
scoreboard players operation @s math = @s currentTimeSec
scoreboard players set @s math2 3
scoreboard players operation @s math %= @s math2
execute if entity @s[scores={math=0}] run function sprint_racer:game_logic/3/elimination/random_sidebar

execute if entity @s[tag=optBalance] run function sprint_racer:items/battle_balance/_index