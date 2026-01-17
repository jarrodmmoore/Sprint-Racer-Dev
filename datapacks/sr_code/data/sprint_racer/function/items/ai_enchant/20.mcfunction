#enchantment of this item is banned? get +1 item and quit out
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banEnchant20] run return \
    run function sprint_racer:items/ai_enchant/deny_enchant {1:"scoreboard players add @s aiHasItem20 1",2:"scoreboard players add @s aiHasGlobal 1",3:"scoreboard players add @s aiHasNormal 1"}
#=====

#this will loop up to 10 times via function recursion
scoreboard players remove @s aiHasItem20 1
scoreboard players remove @s aiHasNormal 1
scoreboard players remove @s aiHasGlobal 1
scoreboard players add @s enchantQty 1
execute if entity @s[scores={enchantQty=..9,aiHasItem20=1..}] run function sprint_racer:items/ai_enchant/20

#now, due to the magic of recursion, this gets executed "enchantQty" number of times
function sprint_racer_language:gameplay/give_item/elite20

tag @s[tag=!enchDone] add enchDone