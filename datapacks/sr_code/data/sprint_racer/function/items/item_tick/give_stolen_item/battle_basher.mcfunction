function sprint_racer_language:_dlc_6/gameplay/give_battle_basher
scoreboard players remove @s giveQty 1

execute if entity @s[scores={giveQty=1..}] run function sprint_racer:items/item_tick/give_stolen_item/battle_basher