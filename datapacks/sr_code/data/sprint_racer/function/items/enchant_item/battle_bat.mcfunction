#enchantment of this item is banned? get a free potato
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banEnchantBattleBat] run return run function sprint_racer:items/enchant_item/recursive_give_one {function:"sprint_racer_language:gameplay/give_item/no0"}
#=====

clear @s wooden_sword[custom_data~{battlebat_basic:1b}] 1

function sprint_racer_language:_dlc_6/gameplay/give_battle_basher