#forced anvil?
scoreboard players set #forceAnvil value 0
execute if score #nextItemIsAnvil value matches 1 if score @s racePosDisplay matches 2.. run scoreboard players set #forceAnvil value 1
execute if score #forceAnvil value matches 1 run scoreboard players set #nextItemIsAnvil value 0
execute if score #forceAnvil value matches 1 run function sprint_racer_language:gameplay/give_item/no17

execute if score #forceAnvil value matches 0 if entity @s[scores={itemLuck=..1}] run function sprint_racer:items/pick_type/luck1
execute if score #forceAnvil value matches 0 if entity @s[scores={itemLuck=2}] run function sprint_racer:items/pick_type/luck2
execute if score #forceAnvil value matches 0 if entity @s[scores={itemLuck=3}] run function sprint_racer:items/pick_type/luck3
execute if score #forceAnvil value matches 0 if entity @s[scores={itemLuck=4}] run function sprint_racer:items/pick_type/luck4
execute if score #forceAnvil value matches 0 if entity @s[scores={itemLuck=5}] run function sprint_racer:items/pick_type/luck5
execute if score #forceAnvil value matches 0 if entity @s[scores={itemLuck=6..}] run function sprint_racer:items/pick_type/luck6