tag @e[tag=w,type=armor_stand] remove banYelItem
tag @e[tag=w,tag=banNo5,tag=banNo6,tag=banNo7,tag=banNo8] add banYelItem
scoreboard players reset @e[tag=w,type=armor_stand] capsuleState

tag @e[tag=random,scores={rNumber=42..44}] remove emptycategory
execute if entity @e[tag=w,tag=banYelItem] run tag @e[tag=random,scores={rNumber=42..44}] add emptycategory

execute unless score #no_cat_check value matches 1 run function sprint_racer:game_logic/0/toggle_item/check_categories