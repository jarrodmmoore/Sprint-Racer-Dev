effect give @s minecraft:weakness 3 10 true

tag @s[tag=aiStronk] remove aiStronk
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=allowPVP] run tag @s add aiStronk
execute if score global gameState matches 3 if entity @s[tag=!aiStronk,scores={aiHoldingItem=..0}] run tag @s add aiStronk

execute if entity @s[tag=!aiStronk,scores={aiHoldingItem=4}] run tag @s add aiStronk
execute if entity @s[tag=!aiStronk,scores={aiHoldingItem=24}] run tag @s add aiStronk
execute if entity @s[tag=!aiStronk,scores={aiHoldingItem=41}] run tag @s add aiStronk