#giving multiple of some items
execute if entity @s[scores={rNumber=0}] run function sprint_racer_language:gameplay/give_item/elite0

execute if entity @s[scores={rNumber=1..5}] run function sprint_racer_language:gameplay/give_item/elite1
execute if entity @s[scores={rNumber=1..5}] run function sprint_racer_language:gameplay/give_item/elite1
execute if entity @s[scores={rNumber=1..5}] run function sprint_racer_language:gameplay/give_item/elite1

execute if entity @s[scores={rNumber=6..10}] run function sprint_racer_language:gameplay/give_item/elite2
execute if entity @s[scores={rNumber=6..10}] run function sprint_racer_language:gameplay/give_item/elite2

execute if entity @s[scores={rNumber=11..14}] run function sprint_racer_language:gameplay/give_item/elite3
execute if entity @s[scores={rNumber=11..14}] run function sprint_racer_language:gameplay/give_item/elite3

execute if entity @s[scores={rNumber=15}] run function sprint_racer_language:gameplay/give_item/elite4