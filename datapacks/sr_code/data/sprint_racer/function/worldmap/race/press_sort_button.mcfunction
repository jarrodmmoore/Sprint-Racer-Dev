scoreboard players add #rSortType value 1
execute if score #rSortType value matches 6.. run scoreboard players set #rSortType value 0
execute positioned 2464 99 270 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 2
scoreboard players set #rQuickCycle value 0

#randomize each time we go past "random" option
execute if score #rSortType value matches 5 run function sprint_racer:worldmap/generate_random_order_race

#clear the chest for immediate feedback
function sprint_racer:worldmap/race/clear_chest