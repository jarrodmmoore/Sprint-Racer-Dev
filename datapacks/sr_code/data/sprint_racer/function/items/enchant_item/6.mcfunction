#this will loop up to 2 times via function recursion
clear @s glass[custom_data~{normalitem:1b}] 1
scoreboard players add @s enchantQty 1
execute if entity @s[scores={enchantQty=..1}] if items entity @s weapon.mainhand glass[custom_data~{no6:1b}] run function sprint_racer:items/enchant_item/6

#now, due to the magic of recursion, this gets executed "enchantQty" number of times
function sprint_racer_language:gameplay/give_item/elite6