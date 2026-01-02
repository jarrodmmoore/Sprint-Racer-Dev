#enchantment of this item is banned? get +1 item and quit out
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banEnchant13] run return \
    run function sprint_racer:items/enchant_item/recursive_give_one {function:"sprint_racer_language:gameplay/give_item/no13"}
#=====

#this will loop up to 10 times via function recursion
clear @s slime_block[custom_data~{normalitem:1b}] 1
scoreboard players add @s enchantQty 1
execute if entity @s[scores={enchantQty=..9}] if items entity @s weapon.mainhand slime_block[custom_data~{no13:1b}] run function sprint_racer:items/enchant_item/13

#now, due to the magic of recursion, this gets executed "enchantQty" number of times
function sprint_racer_language:gameplay/give_item/elite13