#all chests rotate together
#global rotation is tracked by "w" via itemBlockState

scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] itemBlockState 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemBlockState=37..}] itemBlockState 1

#data merge to rotate
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemBlockState=1..6}] run function sprint_racer:game_logic/0/misc_lobby_happenings/preview_chest_spin/1_6
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemBlockState=7..12}] run function sprint_racer:game_logic/0/misc_lobby_happenings/preview_chest_spin/7_12
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemBlockState=13..18}] run function sprint_racer:game_logic/0/misc_lobby_happenings/preview_chest_spin/13_18
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemBlockState=19..24}] run function sprint_racer:game_logic/0/misc_lobby_happenings/preview_chest_spin/19_24
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemBlockState=25..30}] run function sprint_racer:game_logic/0/misc_lobby_happenings/preview_chest_spin/25_30
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemBlockState=31..36}] run function sprint_racer:game_logic/0/misc_lobby_happenings/preview_chest_spin/31_36