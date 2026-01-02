#enchantment of this item is banned? get +1 item and quit out
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banEnchant11] run return \
    run function sprint_racer:items/enchant_item/recursive_give_one {function:"sprint_racer_language:gameplay/give_item/no11"}
#=====

clear @s ender_pearl[custom_data~{normalitem:1b}] 1

#only giving ONE of this item because it's very powerful
function sprint_racer_language:gameplay/give_item/elite11