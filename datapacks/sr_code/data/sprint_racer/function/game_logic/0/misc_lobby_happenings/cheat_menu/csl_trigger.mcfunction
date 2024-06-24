execute if entity @s[scores={csl_trigger=1}] run scoreboard players add #cheatSlotLimit value 1
execute if entity @s[scores={csl_trigger=2}] run scoreboard players remove #cheatSlotLimit value 1

#value limits
execute if score #cheatSlotLimit value matches ..0 run scoreboard players set #cheatSlotLimit value 10
execute if score #cheatSlotLimit value matches 11.. run scoreboard players set #cheatSlotLimit value 1

#refresh menu
scoreboard players reset @s csl_trigger
function sprint_racer_language:_dlc_5/lobby/options/custom_slot_limit