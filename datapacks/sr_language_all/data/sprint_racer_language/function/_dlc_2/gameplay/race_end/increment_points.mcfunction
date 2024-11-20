#sound effect
execute if entity @a[tag=playing,scores={addPoints=1..}] as @a at @s run playsound minecraft:ui.button.click master @s
execute unless entity @a[tag=playing,scores={addPoints=1..}] if entity @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={addPoints=1..}] as @a at @s run playsound minecraft:ui.button.click master @s

###############
# "Orange" and "Cyan" names can be changed to whatever you want.
execute as @a[tag=playing,tag=playerOrange,scores={addPoints=100..}] run scoreboard players add Orange teamPointsShow 100
execute as @a[tag=playing,tag=playerOrange,scores={addPoints=10..}] run scoreboard players add Orange teamPointsShow 10
execute as @a[tag=playing,tag=playerOrange,scores={addPoints=1..}] run scoreboard players add Orange teamPointsShow 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerOrange,scores={addPoints=100..}] run scoreboard players add Orange teamPointsShow 100
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerOrange,scores={addPoints=10..}] run scoreboard players add Orange teamPointsShow 10
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerOrange,scores={addPoints=1..}] run scoreboard players add Orange teamPointsShow 1

execute as @a[tag=playing,tag=playerCyan,scores={addPoints=100..}] run scoreboard players add Cyan teamPointsShow 100
execute as @a[tag=playing,tag=playerCyan,scores={addPoints=10..}] run scoreboard players add Cyan teamPointsShow 10
execute as @a[tag=playing,tag=playerCyan,scores={addPoints=1..}] run scoreboard players add Cyan teamPointsShow 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerCyan,scores={addPoints=100..}] run scoreboard players add Cyan teamPointsShow 100
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerCyan,scores={addPoints=10..}] run scoreboard players add Cyan teamPointsShow 10
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerCyan,scores={addPoints=1..}] run scoreboard players add Cyan teamPointsShow 1
###############


execute as @a[tag=playing,tag=playerOrange,scores={addPoints=100..}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] teamPoints 100
execute as @a[tag=playing,tag=playerOrange,scores={addPoints=10..}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] teamPoints 10
execute as @a[tag=playing,tag=playerOrange,scores={addPoints=1..}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] teamPoints 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerOrange,scores={addPoints=100..}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] teamPoints 100
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerOrange,scores={addPoints=10..}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] teamPoints 10
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerOrange,scores={addPoints=1..}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] teamPoints 1

execute as @a[tag=playing,tag=playerCyan,scores={addPoints=100..}] run scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] teamPoints 100
execute as @a[tag=playing,tag=playerCyan,scores={addPoints=10..}] run scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] teamPoints 10
execute as @a[tag=playing,tag=playerCyan,scores={addPoints=1..}] run scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] teamPoints 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerCyan,scores={addPoints=100..}] run scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] teamPoints 100
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerCyan,scores={addPoints=10..}] run scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] teamPoints 10
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerCyan,scores={addPoints=1..}] run scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] teamPoints 1


scoreboard players add @a[tag=playing,scores={addPoints=100..}] points 100
scoreboard players set @a[tag=playing,scores={addPoints=100..}] addPoints 100

scoreboard players add @a[tag=playing,scores={addPoints=10..}] points 10
scoreboard players remove @a[tag=playing,scores={addPoints=10..}] addPoints 10

scoreboard players add @a[tag=playing,scores={addPoints=1..}] points 1
scoreboard players remove @a[tag=playing,scores={addPoints=1..}] addPoints 1

#AIs
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9,addPoints=100..}] run function sprint_racer_language:_dlc_3/gameplay/ai_points/increment_x100
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9,addPoints=10..}] run function sprint_racer_language:_dlc_3/gameplay/ai_points/increment_x10
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9,addPoints=1..}] run function sprint_racer_language:_dlc_3/gameplay/ai_points/increment_x1

#this will loop as long as players exist who haven't gotten their points
execute if entity @a[tag=playing,scores={addPoints=1..}] run scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime 4
execute unless entity @a[tag=playing,scores={addPoints=1..}] if entity @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={addPoints=1..}] run scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] gameTime 4