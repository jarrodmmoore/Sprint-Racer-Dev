#increment lap
execute if score #pdaExecuted value matches 0 run scoreboard players add #pdaLap value 1
execute if score #pdaExecuted value matches 0 run scoreboard players add #pdaLapCycle value 1

#loops back to route 1 after route 3
execute if score #pdaLapCycle value matches 4.. run scoreboard players set #pdaLapCycle value 1

#announce what route just opened
execute if score #pdaExecuted value matches 0 if score #pdaLapCycle value matches 1 run function sprint_racer_language:levels/redstone_factory/open_emerald_route
execute if score #pdaExecuted value matches 0 if score #pdaLapCycle value matches 2 run function sprint_racer_language:levels/redstone_factory/open_gold_route
execute if score #pdaExecuted value matches 0 if score #pdaLapCycle value matches 3 run function sprint_racer_language:levels/redstone_factory/open_diamond_route

#make sure we only run this once
scoreboard players set #pdaExecuted value 1
#it's possible that two or more players may have entered the next lap on the exact same tick