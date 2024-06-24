#sound effect
execute if entity @a[tag=playing,scores={addPoints=1..}] as @a at @s run playsound minecraft:ui.button.click master @s

scoreboard players add @a[tag=playing,scores={addPoints=100..}] points 100
scoreboard players set @a[tag=playing,scores={addPoints=100..}] addPoints 100

scoreboard players add @a[tag=playing,scores={addPoints=11..}] points 11
scoreboard players remove @a[tag=playing,scores={addPoints=11..}] addPoints 11

scoreboard players add @a[tag=playing,scores={addPoints=1..}] points 1
scoreboard players remove @a[tag=playing,scores={addPoints=1..}] addPoints 1

#AIs
execute as @e[tag=random,type=armor_stand,scores={rNumber=1..9,addPoints=100..}] run function sprint_racer_language:_dlc_3/gameplay/ai_points/increment_x100
execute as @e[tag=random,type=armor_stand,scores={rNumber=1..9,addPoints=11..}] run function sprint_racer_language:_dlc_3/gameplay/ai_points/increment_x11
execute as @e[tag=random,type=armor_stand,scores={rNumber=1..9,addPoints=1..}] run function sprint_racer_language:_dlc_3/gameplay/ai_points/increment_x1

#this will loop as long as players exist who haven't gotten their points
execute if entity @a[tag=playing,scores={addPoints=1..}] run scoreboard players remove @e[tag=w,type=armor_stand] gameTime 4