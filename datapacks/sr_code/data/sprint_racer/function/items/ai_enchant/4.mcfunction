#enchantment of this item is banned? get +1 item and quit out
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banEnchant4] run return \
    run function sprint_racer:items/ai_enchant/deny_enchant {1:"scoreboard players add @s aiHasItem4 1",2:"scoreboard players add @s aiHasMelee 1",3:"scoreboard players add @s aiHasNormal 1"}
#=====

scoreboard players remove @s aiHasItem4 1
scoreboard players remove @s aiHasNormal 1
scoreboard players remove @s aiHasMelee 1

function sprint_racer_language:gameplay/give_item/elite4

tag @s[tag=!enchDone] add enchDone