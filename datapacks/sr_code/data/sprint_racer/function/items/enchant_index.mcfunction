scoreboard players set @s enchantQty 0
execute if items entity @s weapon.mainhand *[custom_data~{no0:1b}] run return run function sprint_racer:items/enchant_item/0
execute if items entity @s weapon.mainhand *[custom_data~{no1:1b}] run return run function sprint_racer:items/enchant_item/1
execute if items entity @s weapon.mainhand *[custom_data~{no2:1b}] run return run function sprint_racer:items/enchant_item/2
execute if items entity @s weapon.mainhand *[custom_data~{no3:1b}] run return run function sprint_racer:items/enchant_item/3
execute if items entity @s weapon.mainhand *[custom_data~{no4:1b}] run return run function sprint_racer:items/enchant_item/4
execute if items entity @s weapon.mainhand *[custom_data~{no5:1b}] run return run function sprint_racer:items/enchant_item/5
execute if items entity @s weapon.mainhand *[custom_data~{no6:1b}] run return run function sprint_racer:items/enchant_item/6
execute if items entity @s weapon.mainhand *[custom_data~{no7:1b}] run return run function sprint_racer:items/enchant_item/7
execute if items entity @s weapon.mainhand *[custom_data~{no8:1b}] run return run function sprint_racer:items/enchant_item/8
execute if items entity @s weapon.mainhand *[custom_data~{no9:1b}] run return run function sprint_racer:items/enchant_item/9
execute if items entity @s weapon.mainhand *[custom_data~{no10:1b}] run return run function sprint_racer:items/enchant_item/10
execute if items entity @s weapon.mainhand *[custom_data~{no11:1b}] run return run function sprint_racer:items/enchant_item/11
execute if items entity @s weapon.mainhand *[custom_data~{no12:1b}] run return run function sprint_racer:items/enchant_item/12
execute if items entity @s weapon.mainhand *[custom_data~{no13:1b}] run return run function sprint_racer:items/enchant_item/13
execute if items entity @s weapon.mainhand *[custom_data~{no14:1b}] run return run function sprint_racer:items/enchant_item/14
execute if items entity @s weapon.mainhand *[custom_data~{no15:1b}] run return run function sprint_racer:items/enchant_item/15
execute if items entity @s weapon.mainhand *[custom_data~{no16:1b}] run return run function sprint_racer:items/enchant_item/16
execute if items entity @s weapon.mainhand *[custom_data~{no17:1b}] run return run function sprint_racer:items/enchant_item/17
execute if items entity @s weapon.mainhand *[custom_data~{no18:1b}] run return run function sprint_racer:items/enchant_item/18
execute if items entity @s weapon.mainhand *[custom_data~{no19:1b}] run return run function sprint_racer:items/enchant_item/19
execute if items entity @s weapon.mainhand *[custom_data~{no20:1b}] run return run function sprint_racer:items/enchant_item/20
execute if items entity @s weapon.mainhand *[custom_data~{fishing_rod:1b}] run return run function sprint_racer:items/enchant_item/fishing_rod
execute if items entity @s weapon.mainhand *[custom_data~{battlebat_basic:1b}] run return run function sprint_racer:items/enchant_item/battle_bat

#still here? we must have enchanted something custom!
tag @s add enchanted_something_custom