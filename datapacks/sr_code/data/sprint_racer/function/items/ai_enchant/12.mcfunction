#enchantment of this item is banned? get +1 item and quit out
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banEnchant12] run return \
    run function sprint_racer:items/ai_enchant/deny_enchant {1:"scoreboard players add @s aiHasItem12 1",2:"scoreboard players add @s aiHasSBoost 0",3:"scoreboard players add @s aiHasNormal 1"}
#=====

scoreboard players remove @s aiHasItem12 1
scoreboard players remove @s aiHasNormal 1

function sprint_racer_language:gameplay/give_item/elite12

tag @s[tag=!enchDone] add enchDone