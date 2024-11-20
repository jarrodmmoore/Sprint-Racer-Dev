tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove banPurItem
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banNo17,tag=banNo18,tag=banNo19,tag=banNo20] add banPurItem
scoreboard players reset @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] capsuleState

tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=50}] remove emptycategory
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banPurItem] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=50}] add emptycategory

execute unless score #no_cat_check value matches 1 run function sprint_racer:game_logic/0/toggle_item/check_categories