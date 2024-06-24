tag @s add justOne
function sprint_racer_language:gameplay/give_item/no19
scoreboard players remove @s giveQty 1

execute if entity @s[scores={giveQty=1..}] run function sprint_racer:items/item_tick/give_stolen_item/19