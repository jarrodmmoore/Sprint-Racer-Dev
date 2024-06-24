tag @e[tag=w,type=armor_stand] remove banRedItem
tag @e[tag=w,tag=banNo1,tag=banNo2,tag=banNo3,tag=banNo4] add banRedItem
scoreboard players reset @e[tag=w,type=armor_stand] capsuleState

tag @e[tag=random,scores={rNumber=39..41}] remove emptycategory
execute if entity @e[tag=w,tag=banRedItem] run tag @e[tag=random,scores={rNumber=39..41}] add emptycategory

execute unless score #no_cat_check value matches 1 run function sprint_racer:game_logic/0/toggle_item/check_categories