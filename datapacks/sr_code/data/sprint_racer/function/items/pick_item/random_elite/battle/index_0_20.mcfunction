#giving multiple of some items
execute if entity @s[scores={rNumber=0}] run function sprint_racer_language:gameplay/give_item/elite0

execute if entity @s[scores={rNumber=1..6}] run function sprint_racer_language:gameplay/give_item/elite1
execute if entity @s[scores={rNumber=1..6}] run function sprint_racer_language:gameplay/give_item/elite1
execute if entity @s[scores={rNumber=1..6}] run function sprint_racer_language:gameplay/give_item/elite1

execute if entity @s[scores={rNumber=7..12}] run function sprint_racer_language:gameplay/give_item/elite2
execute if entity @s[scores={rNumber=7..12}] run function sprint_racer_language:gameplay/give_item/elite2

execute if entity @s[scores={rNumber=13..17}] run function sprint_racer_language:gameplay/give_item/elite3
execute if entity @s[scores={rNumber=13..17}] run function sprint_racer_language:gameplay/give_item/elite3

execute if entity @s[scores={rNumber=18..20}] run function sprint_racer_language:gameplay/give_item/elite4