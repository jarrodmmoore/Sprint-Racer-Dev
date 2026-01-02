#enchantment of this item is banned? get +1 item and quit out
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banEnchant4] run return \
    run function sprint_racer:items/enchant_item/recursive_give_one {function:"sprint_racer_language:gameplay/give_item/no4"}
#=====

clear @s golden_sword[custom_data~{normalitem:1b}] 1

function sprint_racer_language:gameplay/give_item/elite4