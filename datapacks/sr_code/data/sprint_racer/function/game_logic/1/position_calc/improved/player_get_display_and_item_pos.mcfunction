scoreboard players operation @s racePosDisplay = @s racePosCalc
scoreboard players operation @s itemPosition = @s racePosDisplay
scoreboard players operation @s itemPosition -= #finishPos value
scoreboard players add @s itemPosition 1

#ai transfers data to master
execute if entity @s[tag=ai,scores={racePosDisplay=1..}] run function sprint_racer:game_logic/1/position_calc/ai_give_puppetmaster_racepos