scoreboard players set @s lastCatPicked 3

execute if entity @s[scores={itemLuck=..1}] run function sprint_racer:items/pick_item/speed/luck1
execute if entity @s[scores={itemLuck=2}] run function sprint_racer:items/pick_item/speed/luck2
execute if entity @s[scores={itemLuck=3}] run function sprint_racer:items/pick_item/speed/luck3
execute if entity @s[scores={itemLuck=4}] run function sprint_racer:items/pick_item/speed/luck4
execute if entity @s[scores={itemLuck=5}] run function sprint_racer:items/pick_item/speed/luck5
execute if entity @s[scores={itemLuck=6..}] run function sprint_racer:items/pick_item/speed/luck6

execute if entity @s[scores={rNumber=0}] run function sprint_racer_language:gameplay/give_item/no0