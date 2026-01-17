#enchantment of this item is banned? get +1 item and quit out
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banEnchant1] run return \
    run function sprint_racer:items/ai_enchant/deny_enchant {1:"scoreboard players add @s aiHasItem1 1",2:"scoreboard players add @s aiHasProjectile 1",3:"scoreboard players add @s aiHasNormal 1"}
#=====

#this will loop up to 10 times via function recursion
scoreboard players remove @s aiHasItem1 1
scoreboard players remove @s aiHasNormal 1
scoreboard players remove @s aiHasProjectile 1
scoreboard players add @s enchantQty 1
execute if entity @s[scores={enchantQty=..9,aiHasItem1=1..}] run function sprint_racer:items/ai_enchant/1

#now, due to the magic of recursion, this gets executed "enchantQty" number of times
function sprint_racer_language:gameplay/give_item/elite1

tag @s[tag=!enchDone] add enchDone