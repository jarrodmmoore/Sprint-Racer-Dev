tag @e[tag=w,type=armor_stand] remove banGreItem
tag @e[tag=w,tag=banNo13,tag=banNo14,tag=banNo15,tag=banNo16] add banGreItem
scoreboard players reset @e[tag=w,type=armor_stand] capsuleState

tag @e[tag=random,scores={rNumber=48..49}] remove emptycategory
execute if entity @e[tag=w,tag=banGreItem] run tag @e[tag=random,scores={rNumber=48..49}] add emptycategory

execute unless score #no_cat_check value matches 1 run function sprint_racer:game_logic/0/toggle_item/check_categories