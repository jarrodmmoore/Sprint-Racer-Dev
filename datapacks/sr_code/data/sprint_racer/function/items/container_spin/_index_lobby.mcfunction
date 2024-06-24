#all chests rotate together
#global rotation is tracked by "w" via itemBlockState

#data merge to rotate
execute if entity @e[tag=w,scores={itemBlockState=1..6}] run function sprint_racer:items/container_spin/1_6
execute if entity @e[tag=w,scores={itemBlockState=7..12}] run function sprint_racer:items/container_spin/7_12
execute if entity @e[tag=w,scores={itemBlockState=13..18}] run function sprint_racer:items/container_spin/13_18
execute if entity @e[tag=w,scores={itemBlockState=19..24}] run function sprint_racer:items/container_spin/19_24
execute if entity @e[tag=w,scores={itemBlockState=25..30}] run function sprint_racer:items/container_spin/25_30
execute if entity @e[tag=w,scores={itemBlockState=31..36}] run function sprint_racer:items/container_spin/31_36