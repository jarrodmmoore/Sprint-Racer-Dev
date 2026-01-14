#giving multiple of some items

#potato if everything was banned
execute if entity @s[scores={rNumber=0}] unless score global gameState matches 3 run function sprint_racer_language:gameplay/give_item/elite0
#obliterator if everthing was banned and we're in battle mode
execute if entity @s[scores={rNumber=0}] if score global gameState matches 3 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banObliterator] run function sprint_racer_language:gameplay/give_item/elite0
execute if entity @s[scores={rNumber=0}] if score global gameState matches 3 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!banObliterator] run function sprint_racer_language:_dlc_6/gameplay/give_obliterator {count:1}

execute if entity @s[scores={rNumber=1..6}] run function sprint_racer_language:gameplay/give_item/elite1
execute if entity @s[scores={rNumber=1..6}] run function sprint_racer_language:gameplay/give_item/elite1
execute if entity @s[scores={rNumber=1..6}] run function sprint_racer_language:gameplay/give_item/elite1

execute if entity @s[scores={rNumber=7..12}] run function sprint_racer_language:gameplay/give_item/elite2
execute if entity @s[scores={rNumber=7..12}] run function sprint_racer_language:gameplay/give_item/elite2

execute if entity @s[scores={rNumber=13..17}] run function sprint_racer_language:gameplay/give_item/elite3
execute if entity @s[scores={rNumber=13..17}] run function sprint_racer_language:gameplay/give_item/elite3

execute if entity @s[scores={rNumber=18..20}] run function sprint_racer_language:gameplay/give_item/elite4