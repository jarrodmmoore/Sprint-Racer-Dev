tag @e[tag=w,type=armor_stand] remove banBluItem
tag @e[tag=w,tag=banNo9,tag=banNo10,tag=banNo11,tag=banNo12] add banBluItem
scoreboard players reset @e[tag=w,type=armor_stand] capsuleState

tag @e[tag=random,scores={rNumber=45..47}] remove emptycategory
execute if entity @e[tag=w,tag=banBluItem] run tag @e[tag=random,scores={rNumber=45..47}] add emptycategory

execute unless score #no_cat_check value matches 1 run function sprint_racer:game_logic/0/toggle_item/check_categories