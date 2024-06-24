scoreboard players add #bFilterType value 1
execute if score #bFilterType value matches 6.. run scoreboard players set #bFilterType value 0
execute positioned 2464 99 265 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 2
scoreboard players set #bQuickCycle value 0

#clear the chest for immediate feedback
function sprint_racer:worldmap/battle/clear_chest