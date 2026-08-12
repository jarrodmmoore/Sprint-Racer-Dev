tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove banBluItem
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banNo9,tag=banNo10,tag=banNo11,tag=banNo12] add banBluItem
scoreboard players reset @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] capsuleState

tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=45..47}] remove emptycategory
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banBluItem] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=45..47}] add emptycategory

execute unless score #no_cat_check value matches 1 run function sprint_racer:game_logic/0/toggle_item/check_categories