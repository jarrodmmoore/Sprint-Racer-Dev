effect give @s minecraft:invisibility 1 5 true
tag @s[tag=!invis_cram] add invis_cram

scoreboard players set @s invis_cram_t 20

#boots
execute unless entity @s[scores={invisibility=1..}] unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",count:1}]}] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=5107199,unbreakable={show_in_tooltip:0b},enchantments={levels:{"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},show_in_tooltip:0b},hide_additional_tooltip={}] 1
execute if entity @s[scores={invisibility=1..}] if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",count:1}]}] run item replace entity @s armor.feet with air