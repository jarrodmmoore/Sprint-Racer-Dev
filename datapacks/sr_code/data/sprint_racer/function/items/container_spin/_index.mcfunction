#all chests rotate together
#global rotation is tracked by "w" via itemBlockState

#scoreboard players add @e[tag=w,type=armor_stand] itemBlockState 1
#scoreboard players set @e[tag=w,scores={itemBlockState=37..}] itemBlockState 1

#data merge to rotate
#execute if entity @e[tag=w,scores={itemBlockState=1..6}] run function sprint_racer:items/container_spin/1_6
#execute if entity @e[tag=w,scores={itemBlockState=7..12}] run function sprint_racer:items/container_spin/7_12
#execute if entity @e[tag=w,scores={itemBlockState=13..18}] run function sprint_racer:items/container_spin/13_18
#execute if entity @e[tag=w,scores={itemBlockState=19..24}] run function sprint_racer:items/container_spin/19_24
#execute if entity @e[tag=w,scores={itemBlockState=25..30}] run function sprint_racer:items/container_spin/25_30
#execute if entity @e[tag=w,scores={itemBlockState=31..36}] run function sprint_racer:items/container_spin/31_36


#tp happens once in a while
scoreboard players add #chestSpin value 1

#new spin method
execute if score #chestSpin value matches 3.. as @e[tag=itemcontainer,type=armor_stand] at @s run tp @s ~ ~ ~ ~18 ~
execute if score #chestSpin value matches 3.. run scoreboard players remove #chestSpin value 3