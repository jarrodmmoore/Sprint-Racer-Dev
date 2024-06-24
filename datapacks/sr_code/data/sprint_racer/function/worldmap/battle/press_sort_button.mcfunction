scoreboard players add #bSortType value 1
execute if score #bSortType value matches 6.. run scoreboard players set #bSortType value 0
execute positioned 2464 99 265 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 2
scoreboard players set #bQuickCycle value 0

#randomize each time we go past "random" option
execute if score #bSortType value matches 5 run function sprint_racer:worldmap/generate_random_order_battle

#clear the chest for immediate feedback
function sprint_racer:worldmap/battle/clear_chest