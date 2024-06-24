scoreboard players set @a inputCooldown 20

tag @e[tag=w,type=armor_stand] add eraseTrack

execute unless entity @e[tag=w,scores={gpNumber=1..}] run tag @s add nope_avi

execute unless entity @s[tag=nope_avi] run scoreboard players add @e[tag=w,type=armor_stand] gpNumber 0
execute unless entity @s[tag=nope_avi] run tellraw @a ["",{"text":" "}]
execute unless entity @s[tag=nope_avi] run function sprint_racer_language:_dlc_3/grand_prix/undo_track
execute unless entity @s[tag=nope_avi] as @a at @s run playsound minecraft:block.fire.extinguish master @s ~ 100000 ~ 100000 1.6
execute unless entity @s[tag=nope_avi] as @e[tag=w,limit=1,type=armor_stand] positioned 1584 39 372 run function sprint_racer:game_logic/11/write_new_track/position
execute unless entity @s[tag=nope_avi] as @e[tag=w,limit=1,type=armor_stand] run function sprint_racer:game_logic/11/remove_track
execute unless entity @s[tag=nope_avi] run scoreboard players remove @e[tag=w,type=armor_stand] gpNumber 1

execute if entity @s[tag=nope_avi] run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ 100000 ~ 100000 1.8
execute if entity @s[tag=nope_avi] run function sprint_racer_language:_dlc_3/grand_prix/cannot_undo

tag @s remove nope_avi


tag @e[tag=chosenTrack] remove chosenTrack