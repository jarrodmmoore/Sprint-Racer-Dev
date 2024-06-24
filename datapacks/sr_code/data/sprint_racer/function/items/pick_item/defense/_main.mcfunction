scoreboard players set @s lastCatPicked 2

execute if entity @s[scores={itemLuck=..1}] run function sprint_racer:items/pick_item/defense/luck1
execute if entity @s[scores={itemLuck=2}] run function sprint_racer:items/pick_item/defense/luck2
execute if entity @s[scores={itemLuck=3}] run function sprint_racer:items/pick_item/defense/luck3
execute if entity @s[scores={itemLuck=4}] run function sprint_racer:items/pick_item/defense/luck4
execute if entity @s[scores={itemLuck=5..}] run function sprint_racer:items/pick_item/defense/luck5

execute if entity @s[scores={rNumber=0}] run function sprint_racer_language:gameplay/give_item/no0