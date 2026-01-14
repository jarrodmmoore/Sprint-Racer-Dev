execute if entity @s[scores={rNumber=0}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banObliterator] run function sprint_racer_language:gameplay/capsule_item/0
execute if entity @s[scores={rNumber=0}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!banObliterator] run function sprint_racer_language:gameplay/capsule_item/obliterator

execute if entity @s[scores={rNumber=1..6}] run function sprint_racer_language:gameplay/capsule_item/1
execute if entity @s[scores={rNumber=7..12}] run function sprint_racer_language:gameplay/capsule_item/2
execute if entity @s[scores={rNumber=13..17}] run function sprint_racer_language:gameplay/capsule_item/3
execute if entity @s[scores={rNumber=18..20}] run function sprint_racer_language:gameplay/capsule_item/4