#height of jump is determined by itemLuck
#THIS WAS REMOVED in order to make the item more consistent
#tag @s[scores={itemLuck=1}] add elytraShort
#tag @s[scores={itemLuck=2..3}] add elytraMed
#tag @s[scores={itemLuck=4..5}] add elytraLong

tag @s add elytraMed

execute if items entity @s armor.chest elytra[custom_data~{no12:1b}] run function sprint_racer:items/item_tick/normal/equip_elytra
execute if items entity @s armor.chest elytra[custom_data~{elite12:1b}] run function sprint_racer:items/item_tick/elite/equip_elytra_firework