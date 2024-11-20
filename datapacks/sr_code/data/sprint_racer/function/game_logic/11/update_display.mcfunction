scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gpRound 1

#round display
fill 1598 70 439 1598 73 441 orange_concrete
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] run function sprint_racer_language:_dlc_3/grand_prix/round_number

#clear any old frames
kill @e[type=item_frame,tag=gpFrame]

#summon display frames
summon minecraft:item_frame 1599 71 433 {Invisible:1b,Fixed:1b,Facing:4b,Invulnerable:1b,Silent:1b,Tags:["fixframe","lobbyprop","gpFrame1","gpFrame"]}
summon minecraft:item_frame 1597 71 436 {Invisible:1b,Fixed:1b,Facing:4b,Invulnerable:1b,Silent:1b,Tags:["fixframe","lobbyprop","gpFrame2","gpFrame"]}
summon minecraft:item_frame 1596 71 438 {Invisible:1b,Fixed:1b,Facing:4b,Invulnerable:1b,Silent:1b,Tags:["fixframe","lobbyprop","gpFrame3","gpFrame"]}
summon minecraft:item_frame 1595 71 440 {Invisible:1b,Fixed:1b,Facing:4b,Invulnerable:1b,Silent:1b,Tags:["fixframe","lobbyprop","gpFrame4","gpFrame"]}
summon minecraft:item_frame 1596 71 442 {Invisible:1b,Fixed:1b,Facing:4b,Invulnerable:1b,Silent:1b,Tags:["fixframe","lobbyprop","gpFrame5","gpFrame"]}
summon minecraft:item_frame 1597 71 444 {Invisible:1b,Fixed:1b,Facing:4b,Invulnerable:1b,Silent:1b,Tags:["fixframe","lobbyprop","gpFrame6","gpFrame"]}
summon minecraft:item_frame 1599 71 447 {Invisible:1b,Fixed:1b,Facing:4b,Invulnerable:1b,Silent:1b,Tags:["fixframe","lobbyprop","gpFrame7","gpFrame"]}

scoreboard players set @e[type=item_frame,tag=gpFrame1] aiEntity 1
scoreboard players set @e[type=item_frame,tag=gpFrame2] aiEntity 2
scoreboard players set @e[type=item_frame,tag=gpFrame3] aiEntity 3
scoreboard players set @e[type=item_frame,tag=gpFrame4] aiEntity 4
scoreboard players set @e[type=item_frame,tag=gpFrame5] aiEntity 5
scoreboard players set @e[type=item_frame,tag=gpFrame6] aiEntity 6
scoreboard players set @e[type=item_frame,tag=gpFrame7] aiEntity 7

#frames
scoreboard players set @e[type=item_frame,tag=gpFrame1] gpNumber -2
scoreboard players set @e[type=item_frame,tag=gpFrame2] gpNumber -1
scoreboard players set @e[type=item_frame,tag=gpFrame3] gpNumber 0
scoreboard players set @e[type=item_frame,tag=gpFrame4] gpNumber 1
scoreboard players set @e[type=item_frame,tag=gpFrame5] gpNumber 2
scoreboard players set @e[type=item_frame,tag=gpFrame6] gpNumber 3
scoreboard players set @e[type=item_frame,tag=gpFrame7] gpNumber 4

execute as @e[type=item_frame,tag=gpFrame] at @s run function sprint_racer:game_logic/11/item_frame/_display_index