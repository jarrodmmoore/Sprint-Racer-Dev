#enchantment of this item is banned? get +1 item and quit out
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banEnchantBattleBat] run return \
    run function sprint_racer:items/ai_enchant/deny_enchant {1:"scoreboard players add @s aiHasItem20 0",2:"scoreboard players add @s aiHasGlobal 0",3:"scoreboard players add @s aiHasNormal 0"}
#=====

function sprint_racer_language:_dlc_6/gameplay/give_battle_basher
tag @s[tag=!enchDone] add enchDone