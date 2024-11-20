scoreboard players set @a inputCooldown 20

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 1
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add randomTrack

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gpNumber=50..}] run tag @s add nope_avi

execute unless entity @s[tag=nope_avi] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gpNumber 1
execute unless entity @s[tag=nope_avi] run tellraw @a ["",{"text":" "}]
execute unless entity @s[tag=nope_avi] run function sprint_racer_language:_dlc_3/grand_prix/add_random_1
execute unless entity @s[tag=nope_avi] run function sprint_racer_language:_dlc_3/grand_prix/number_set
execute unless entity @s[tag=nope_avi] as @a at @s run playsound minecraft:block.note_block.bell master @s ~ 100000 ~ 100000 1.9
execute unless entity @s[tag=nope_avi] as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] positioned 1584 39 372 run function sprint_racer:game_logic/11/write_new_track/position

execute if entity @s[tag=nope_avi] run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ 100000 ~ 100000 1.8
execute if entity @s[tag=nope_avi] run function sprint_racer_language:_dlc_3/grand_prix/number_maxed

tag @s remove nope_avi


scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameState 11
tag @e[tag=chosenTrack] remove chosenTrack