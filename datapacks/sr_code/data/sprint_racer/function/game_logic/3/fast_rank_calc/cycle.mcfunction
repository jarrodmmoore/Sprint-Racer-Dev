#find highest score
execute as @a[tag=playing,tag=!gotRank] run function sprint_racer:game_logic/3/fast_rank_calc/player_check
execute as @e[tag=AImaster,type=armor_stand,tag=!gotRank] run function sprint_racer:game_logic/3/fast_rank_calc/player_check

#players with highest score get next available rank
execute as @a[tag=playing,tag=!gotRank] if score @s KOs >= #bestKOcount value run function sprint_racer:game_logic/3/fast_rank_calc/player_get_rank
execute as @e[tag=AImaster,type=armor_stand,tag=!gotRank] if score @s KOs >= #bestKOcount value run function sprint_racer:game_logic/3/fast_rank_calc/player_get_rank

#sync up with next battle rank
scoreboard players operation #getBattleRank value = #nextBattleRank value

#prep for next cycle
scoreboard players set #bestKOcount value -999999

scoreboard players remove #allowRecursions value 1
##########################################
#cycle if we have untagged players
scoreboard players set #untagged value 0
execute as @a[tag=playing,tag=!gotRank] run scoreboard players add #untagged value 1
execute as @e[tag=AImaster,type=armor_stand,tag=!gotRank] run scoreboard players add #untagged value 1
execute if score #untagged value matches 1.. if score #allowRecursions value matches 1.. run function sprint_racer:game_logic/3/fast_rank_calc/cycle
##########################################

#count how many unique ranks we gave out
scoreboard players add @s playerCountC 1