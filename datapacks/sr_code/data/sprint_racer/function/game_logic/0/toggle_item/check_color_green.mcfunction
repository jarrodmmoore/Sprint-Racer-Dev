tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove banGreItem
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banNo13,tag=banNo14,tag=banNo15,tag=banNo16] add banGreItem
scoreboard players reset @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] capsuleState

tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=48..49}] remove emptycategory
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banGreItem] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=48..49}] add emptycategory

execute unless score #no_cat_check value matches 1 run function sprint_racer:game_logic/0/toggle_item/check_categories