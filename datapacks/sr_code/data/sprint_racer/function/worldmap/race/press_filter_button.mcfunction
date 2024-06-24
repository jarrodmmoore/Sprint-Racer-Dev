scoreboard players add #rFilterType value 1
execute if score #rFilterType value matches 6.. run scoreboard players set #rFilterType value 0
execute positioned 2464 99 270 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 2
scoreboard players set #rQuickCycle value 0

#clear the chest for immediate feedback
function sprint_racer:worldmap/race/clear_chest