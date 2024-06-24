effect clear @s[scores={invisibility=..0}] minecraft:invisibility
tag @s[tag=invis_cram] remove invis_cram

#boots
execute if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",count:1}]}] run item replace entity @s armor.feet with air