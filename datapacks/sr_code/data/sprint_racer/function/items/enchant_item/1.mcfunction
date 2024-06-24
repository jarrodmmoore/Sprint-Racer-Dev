#this will loop up to 10 times via function recursion
clear @s snowball[custom_data~{normalitem:1b}] 1
scoreboard players add @s enchantQty 1
execute if entity @s[scores={enchantQty=..9}] if items entity @s weapon.mainhand snowball[custom_data~{no1:1b}] run function sprint_racer:items/enchant_item/1

#now, due to the magic of recursion, this gets executed "enchantQty" number of times
function sprint_racer_language:gameplay/give_item/elite1