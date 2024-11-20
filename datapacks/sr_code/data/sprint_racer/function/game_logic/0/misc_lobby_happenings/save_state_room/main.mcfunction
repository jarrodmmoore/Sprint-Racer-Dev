#saveStateSeq1
#saveStateSeq2

execute unless entity @e[tag=save_state_text,tag=save_state_title,type=armor_stand,limit=1] run function sprint_racer_language:_dlc_4/lobby/save_state_room/summon_texts

#scrolling text wheee
scoreboard players add global saveStateSeq1 1
#execute if entity @s[tag=halftick] run scoreboard players add global saveStateSeq1 1
execute if score global saveStateSeq1 matches 15.. run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/scrolling_text_loc

#execute if entity @s[tag=!halftick] as @e[type=armor_stand,tag=save_state_scrolling] at @s run tp @s ~ ~.03 ~
#execute if entity @s[tag=halftick] as @e[type=armor_stand,tag=save_state_scrolling] at @s run tp @s ~ ~.06 ~
execute as @e[type=armor_stand,tag=save_state_scrolling] at @s run tp @s ~ ~.03 ~
kill @e[x=1605,y=92,z=455,dx=11,dy=6,dz=7,type=armor_stand,tag=save_state_scrolling]

scoreboard players set @e[tag=save_state_text,type=armor_stand] lifespan 5


#tell players they can load save states
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=requireAdmin,tag=anyPlayerLoadsSave] run scoreboard players set @a[x=1605,y=88,z=455,dx=10,dy=5,dz=7,gamemode=adventure,tag=!admin,scores={actionbarState=..2}] actionbarState2 5
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=requireAdmin,tag=anyPlayerLoadsSave] run scoreboard players set @a[x=1605,y=88,z=455,dx=10,dy=5,dz=7,gamemode=adventure,tag=!admin,scores={actionbarState=..2}] actionbarState -50