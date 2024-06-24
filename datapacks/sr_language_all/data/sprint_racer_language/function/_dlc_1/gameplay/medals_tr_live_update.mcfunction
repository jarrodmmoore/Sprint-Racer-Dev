#"Bronze", "Silver", "Gold", "Diamond", "Best" are all safe to edit.

scoreboard players set #10 value 10

scoreboard players operation #math value = @e[tag=w,limit=1,type=armor_stand] bronzeTR
scoreboard players operation #math value /= #10 value
execute if entity @e[tag=w,type=armor_stand,scores={bronzeTR=0..}] run scoreboard players operation Bronze medalsTR = #math value

scoreboard players operation #math value = @e[tag=w,limit=1,type=armor_stand] silverTR
scoreboard players operation #math value /= #10 value
execute if entity @e[tag=w,type=armor_stand,scores={silverTR=0..}] run scoreboard players operation Silver medalsTR = #math value

scoreboard players operation #math value = @e[tag=w,limit=1,type=armor_stand] goldTR
scoreboard players operation #math value /= #10 value
execute if entity @e[tag=w,type=armor_stand,scores={goldTR=0..}] run scoreboard players operation Gold medalsTR = #math value

scoreboard players operation #math value = @e[tag=w,limit=1,type=armor_stand] diamondTR
scoreboard players operation #math value /= #10 value
execute if score #sidebarDiamond value matches 1 if entity @e[tag=w,type=armor_stand,scores={diamondTR=0..}] run scoreboard players operation Diamond medalsTR = #math value

scoreboard players operation #math value = @e[tag=w,limit=1,type=armor_stand] bestTR
scoreboard players operation #math value /= #10 value
execute if entity @e[tag=w,type=armor_stand,scores={bestTR=0..}] run scoreboard players operation Best medalsTR = #math value