scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolNum 18
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={tvPoolNum=..0}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolNum 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={tvPoolMode=1,tvPoolNum=55..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolNum 37
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={tvPoolMode=2,tvPoolNum=37..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolNum 19

function sprint_racer:game_logic/9/grid_display/ungrouped_stock/update_display