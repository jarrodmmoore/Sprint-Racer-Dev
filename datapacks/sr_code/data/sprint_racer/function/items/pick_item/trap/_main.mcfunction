scoreboard players set @s lastCatPicked 4

execute if entity @s[scores={itemLuck=..1}] run function sprint_racer:items/pick_item/trap/luck1
execute if entity @s[scores={itemLuck=2}] run function sprint_racer:items/pick_item/trap/luck2
execute if entity @s[scores={itemLuck=3}] run function sprint_racer:items/pick_item/trap/luck3
execute if entity @s[scores={itemLuck=4}] run function sprint_racer:items/pick_item/trap/luck4
execute if entity @s[scores={itemLuck=5..}] run function sprint_racer:items/pick_item/trap/luck5

execute if entity @s[scores={rNumber=0}] run function sprint_racer_language:gameplay/give_item/no0