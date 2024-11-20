scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gpRound 1
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] run function sprint_racer_language:_dlc_3/grand_prix/round_number

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math2 2

scoreboard players add @e[type=item_frame,tag=gpFrame] aiEntity 1
scoreboard players set @e[type=item_frame,tag=gpFrame,scores={aiEntity=8..}] aiEntity 1

scoreboard players operation @e[type=item_frame,tag=gpFrame,scores={aiEntity=2}] gpNumber = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] gpRound
scoreboard players operation @e[type=item_frame,tag=gpFrame,scores={aiEntity=2}] gpNumber -= @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] math2
execute as @e[type=item_frame,tag=gpFrame,scores={aiEntity=2}] at @s run function sprint_racer:game_logic/11/item_frame/_display_index

tp @e[type=item_frame,tag=gpFrame,scores={aiEntity=1}] 1599 71 433
tp @e[type=item_frame,tag=gpFrame,scores={aiEntity=2}] 1597 71 436
tp @e[type=item_frame,tag=gpFrame,scores={aiEntity=3}] 1596 71 438
tp @e[type=item_frame,tag=gpFrame,scores={aiEntity=4}] 1595 71 440
tp @e[type=item_frame,tag=gpFrame,scores={aiEntity=5}] 1596 71 442
tp @e[type=item_frame,tag=gpFrame,scores={aiEntity=6}] 1597 71 444
tp @e[type=item_frame,tag=gpFrame,scores={aiEntity=7}] 1599 71 447

execute as @a[scores={gpMenu1=0..}] run trigger gpMenu1 set 0
execute as @a[scores={gpMenu2=0..}] run trigger gpMenu2 set 0