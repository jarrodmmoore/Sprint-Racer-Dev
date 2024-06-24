tag @s remove gpOrderSet

execute if entity @e[tag=w,type=armor_stand,scores={gpNumber=50..}] run tag @s add nope_avi

execute unless entity @s[tag=nope_avi] run scoreboard players add @e[tag=w,type=armor_stand] gpNumber 1
execute unless entity @s[tag=nope_avi] run tellraw @a ["",{"text":" "}]
execute unless entity @s[tag=nope_avi] run function sprint_racer:game_logic/6/worldmap_say_name
execute unless entity @s[tag=nope_avi] run function sprint_racer_language:_dlc_3/grand_prix/number_set
execute unless entity @s[tag=nope_avi] as @a at @s run playsound minecraft:block.note_block.bell master @s ~ 100000 ~ 100000 1.9
execute unless entity @s[tag=nope_avi] as @e[tag=w,limit=1,type=armor_stand] positioned 1584 39 372 run function sprint_racer:game_logic/11/write_new_track/position

execute if entity @s[tag=nope_avi] run execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ 100000 ~ 100000 1.8
execute if entity @s[tag=nope_avi] run function sprint_racer_language:_dlc_3/grand_prix/number_maxed

tag @s remove nope_avi

#tag!
scoreboard players operation #wgpNumber value = @e[tag=w,type=armor_stand,limit=1] gpNumber
execute if score #wgpNumber value matches 1 run tag @e[tag=chosenTrack,limit=1] add gpNo1
execute if score #wgpNumber value matches 2 run tag @e[tag=chosenTrack,limit=1] add gpNo2
execute if score #wgpNumber value matches 3 run tag @e[tag=chosenTrack,limit=1] add gpNo3
execute if score #wgpNumber value matches 4 run tag @e[tag=chosenTrack,limit=1] add gpNo4
execute if score #wgpNumber value matches 5 run tag @e[tag=chosenTrack,limit=1] add gpNo5
execute if score #wgpNumber value matches 6 run tag @e[tag=chosenTrack,limit=1] add gpNo6
execute if score #wgpNumber value matches 7 run tag @e[tag=chosenTrack,limit=1] add gpNo7
execute if score #wgpNumber value matches 8 run tag @e[tag=chosenTrack,limit=1] add gpNo8
execute if score #wgpNumber value matches 9 run tag @e[tag=chosenTrack,limit=1] add gpNo9
execute if score #wgpNumber value matches 10 run tag @e[tag=chosenTrack,limit=1] add gpNo10
execute if score #wgpNumber value matches 11 run tag @e[tag=chosenTrack,limit=1] add gpNo11
execute if score #wgpNumber value matches 12 run tag @e[tag=chosenTrack,limit=1] add gpNo12
execute if score #wgpNumber value matches 13 run tag @e[tag=chosenTrack,limit=1] add gpNo13
execute if score #wgpNumber value matches 14 run tag @e[tag=chosenTrack,limit=1] add gpNo14
execute if score #wgpNumber value matches 15 run tag @e[tag=chosenTrack,limit=1] add gpNo15
execute if score #wgpNumber value matches 16 run tag @e[tag=chosenTrack,limit=1] add gpNo16
execute if score #wgpNumber value matches 17 run tag @e[tag=chosenTrack,limit=1] add gpNo17
execute if score #wgpNumber value matches 18 run tag @e[tag=chosenTrack,limit=1] add gpNo18
execute if score #wgpNumber value matches 19 run tag @e[tag=chosenTrack,limit=1] add gpNo19
execute if score #wgpNumber value matches 20 run tag @e[tag=chosenTrack,limit=1] add gpNo20
execute if score #wgpNumber value matches 21 run tag @e[tag=chosenTrack,limit=1] add gpNo21
execute if score #wgpNumber value matches 22 run tag @e[tag=chosenTrack,limit=1] add gpNo22
execute if score #wgpNumber value matches 23 run tag @e[tag=chosenTrack,limit=1] add gpNo23
execute if score #wgpNumber value matches 24 run tag @e[tag=chosenTrack,limit=1] add gpNo24
execute if score #wgpNumber value matches 25 run tag @e[tag=chosenTrack,limit=1] add gpNo25
execute if score #wgpNumber value matches 26 run tag @e[tag=chosenTrack,limit=1] add gpNo26
execute if score #wgpNumber value matches 27 run tag @e[tag=chosenTrack,limit=1] add gpNo27
execute if score #wgpNumber value matches 28 run tag @e[tag=chosenTrack,limit=1] add gpNo28
execute if score #wgpNumber value matches 29 run tag @e[tag=chosenTrack,limit=1] add gpNo29
execute if score #wgpNumber value matches 30 run tag @e[tag=chosenTrack,limit=1] add gpNo30
execute if score #wgpNumber value matches 31 run tag @e[tag=chosenTrack,limit=1] add gpNo31
execute if score #wgpNumber value matches 32 run tag @e[tag=chosenTrack,limit=1] add gpNo32
execute if score #wgpNumber value matches 33 run tag @e[tag=chosenTrack,limit=1] add gpNo33
execute if score #wgpNumber value matches 34 run tag @e[tag=chosenTrack,limit=1] add gpNo34
execute if score #wgpNumber value matches 35 run tag @e[tag=chosenTrack,limit=1] add gpNo35
execute if score #wgpNumber value matches 36 run tag @e[tag=chosenTrack,limit=1] add gpNo36
execute if score #wgpNumber value matches 37 run tag @e[tag=chosenTrack,limit=1] add gpNo37
execute if score #wgpNumber value matches 38 run tag @e[tag=chosenTrack,limit=1] add gpNo38
execute if score #wgpNumber value matches 39 run tag @e[tag=chosenTrack,limit=1] add gpNo39
execute if score #wgpNumber value matches 40 run tag @e[tag=chosenTrack,limit=1] add gpNo40
execute if score #wgpNumber value matches 41 run tag @e[tag=chosenTrack,limit=1] add gpNo41
execute if score #wgpNumber value matches 42 run tag @e[tag=chosenTrack,limit=1] add gpNo42
execute if score #wgpNumber value matches 43 run tag @e[tag=chosenTrack,limit=1] add gpNo43
execute if score #wgpNumber value matches 44 run tag @e[tag=chosenTrack,limit=1] add gpNo44
execute if score #wgpNumber value matches 45 run tag @e[tag=chosenTrack,limit=1] add gpNo45
execute if score #wgpNumber value matches 46 run tag @e[tag=chosenTrack,limit=1] add gpNo46
execute if score #wgpNumber value matches 47 run tag @e[tag=chosenTrack,limit=1] add gpNo47
execute if score #wgpNumber value matches 48 run tag @e[tag=chosenTrack,limit=1] add gpNo48
execute if score #wgpNumber value matches 49 run tag @e[tag=chosenTrack,limit=1] add gpNo49
execute if score #wgpNumber value matches 50 run tag @e[tag=chosenTrack,limit=1] add gpNo50

scoreboard players set @e[tag=w,type=armor_stand] gameState 11
scoreboard players set global gameState 11
tag @e[tag=chosenTrack] remove chosenTrack