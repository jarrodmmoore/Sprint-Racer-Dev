#sound effect
execute if entity @a[tag=playing,scores={addPoints=1..}] as @a at @s run playsound minecraft:ui.button.click master @s

scoreboard players add @a[tag=playing,scores={addPoints=100..}] points 100
scoreboard players set @a[tag=playing,scores={addPoints=100..}] addPoints 100

scoreboard players add @a[tag=playing,scores={addPoints=10..}] points 10
scoreboard players remove @a[tag=playing,scores={addPoints=10..}] addPoints 10

scoreboard players add @a[tag=playing,scores={addPoints=1..}] points 1
scoreboard players remove @a[tag=playing,scores={addPoints=1..}] addPoints 1


#this will loop as long as players exist who haven't gotten their points
execute if entity @a[tag=playing,scores={addPoints=1..}] run scoreboard players remove @e[tag=w,type=armor_stand] gameTime 4