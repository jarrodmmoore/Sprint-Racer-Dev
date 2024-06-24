#missing bossbar? get one
execute as @a[gamemode=!spectator,tag=playing] unless score @s bbLapDisplay matches 1.. run function sprint_racer:game_logic/1/lap_bossbar/get_personal_bbar

#players control their own bbar
execute as @a[gamemode=!spectator,tag=playing,scores={bbLapDisplay=1..10}] run function sprint_racer:game_logic/1/lap_bossbar/personalized__index

#show personalized bbar to the correct player please :)
bossbar set minecraft:lap1 players @a[gamemode=!spectator,tag=playing,scores={bbLapDisplay=1,lap=-998..999998}]
bossbar set minecraft:lap2 players @a[gamemode=!spectator,tag=playing,scores={bbLapDisplay=2,lap=-998..999998}]
bossbar set minecraft:lap3 players @a[gamemode=!spectator,tag=playing,scores={bbLapDisplay=3,lap=-998..999998}]
bossbar set minecraft:lap4 players @a[gamemode=!spectator,tag=playing,scores={bbLapDisplay=4,lap=-998..999998}]
bossbar set minecraft:lap5 players @a[gamemode=!spectator,tag=playing,scores={bbLapDisplay=5,lap=-998..999998}]
bossbar set minecraft:lap6 players @a[gamemode=!spectator,tag=playing,scores={bbLapDisplay=6,lap=-998..999998}]
bossbar set minecraft:lap7 players @a[gamemode=!spectator,tag=playing,scores={bbLapDisplay=7,lap=-998..999998}]
bossbar set minecraft:lap8 players @a[gamemode=!spectator,tag=playing,scores={bbLapDisplay=8,lap=-998..999998}]
bossbar set minecraft:lap9 players @a[gamemode=!spectator,tag=playing,scores={bbLapDisplay=9,lap=-998..999998}]
bossbar set minecraft:lap10 players @a[gamemode=!spectator,tag=playing,scores={bbLapDisplay=10,lap=-998..999998}]

#more than 10 players? switch to old system
execute if score #bbSlot value matches 12.. run function sprint_racer:game_logic/1/lap_bossbar/lap_bossbar_index