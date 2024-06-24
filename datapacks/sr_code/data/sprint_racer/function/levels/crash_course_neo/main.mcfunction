function sprint_racer:levels/crash_course_neo/map

#no checkpoint navigator thing when using elytra, don't want to overwhelm new players with it
scoreboard players set @a[tag=!showCheckNav] showCheckNav -4

#night vision
effect give @a night_vision 15 1 true

#punish players on soul sand
execute as @a at @s if block ~ ~-0.5 ~ #sprint_racer:slow_terrain run effect give @s slowness 1 1

#make sure players have the book that allows them to toggle the tutorial
tag @a remove hasTutor
tag @a[gamemode=adventure,nbt={Inventory:[{Slot:0b,id:"minecraft:book",components:{"minecraft:custom_data":{tutor:1b}}}]}] add hasTutor
execute if entity @e[tag=w,type=armor_stand,scores={gameState=1,gameTime=164..}] as @a[tag=playing,tag=!noInventory,gamemode=adventure,tag=!hasTutor] run function sprint_racer_language:levels/crash_course/give_tutor_book
tag @a[tag=hasTutor] remove hasTutor

#right click book to toggle tutorial mode
execute as @a[scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand *[custom_data~{tutorON:1b}] at @s run function sprint_racer:levels/crash_course/tutorial_mode_disable
execute as @a[scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand *[custom_data~{tutorOFF:1b}] at @s run function sprint_racer:levels/crash_course/tutorial_mode_enable

#check if a player just reached a new lap. if they did, flip the routes
scoreboard players set #ccneo_next_lap value 0
execute as @e[tag=activeplayer,scores={lapFake=1..}] if score @s lapFake > #ccneo_lap value run scoreboard players set #ccneo_next_lap value 1
execute if score #ccneo_next_lap value matches 1 run function sprint_racer:levels/crash_course_neo/route_change
#mark the players who are on the leading lap
tag @e[tag=ccneo_leading_lap] remove ccneo_leading_lap
execute as @e[tag=activeplayer,scores={lapFake=1..}] if score @s lapFake >= #ccneo_lap value run tag @s add ccneo_leading_lap

#track transforms over time
execute if score #ccneo_route value matches 1 if score #ccneo_lap value matches ..1 run function sprint_racer:levels/crash_course_neo/manage_route_1
execute if score #ccneo_route value matches 1 if score #ccneo_lap value matches 2.. if entity @e[tag=ccneo_leading_lap,scores={check=2..}] run function sprint_racer:levels/crash_course_neo/manage_route_1
execute if score #ccneo_route value matches 2 if entity @e[tag=ccneo_leading_lap,scores={check=2..}] run function sprint_racer:levels/crash_course_neo/manage_route_2

#tutorial stuff

#sprint
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=200..}] as @a[tag=!noTutorial,scores={tutorProgress=..0}] run scoreboard players set @s tutorialMessage 1
#jump boost
execute as @a[x=428,y=61,z=110,distance=..6,tag=!noTutorial,scores={tutorProgress=..1}] run scoreboard players set @s tutorialMessage 2
#resistance
execute as @a[x=551,y=69,z=115,distance=..6,tag=!noTutorial,scores={tutorProgress=..2}] run scoreboard players set @s tutorialMessage 3
#use items
execute as @a[x=656,y=61,z=69,distance=..10,tag=!noTutorial,scores={tutorProgress=..3}] run scoreboard players set @s tutorialMessage 4
#switch
execute as @a[x=442,y=61,z=88,distance=..5,tag=!noTutorial,scores={lapFake=2..,tutorProgress=..4}] run scoreboard players set @s tutorialMessage 5
#hit checkpoints
execute as @a[tag=!noTutorial,scores={lapFake=2..,check=1..,tutorProgress=..5}] run scoreboard players set @s tutorialMessage 6
#swim fast
execute as @a[tag=!noTutorial,scores={tutorProgress=..6}] at @s if block ~ ~-0.5 ~ light_blue_concrete run scoreboard players set @s tutorialMessage 7
execute as @a[tag=!noTutorial,scores={tutorProgress=..6}] at @s if block ~ ~ ~ water run scoreboard players set @s tutorialMessage 7
#elytra
execute as @a[tag=!noTutorial,scores={tutorProgress=..7,elytraTimer=1..},x=533,y=64,z=-60,distance=..12] at @s run scoreboard players set @s tutorialMessage 8

#now
#SHOW ME WHAT YOU GOT
execute as @a[scores={tutorialMessage=1..}] run function sprint_racer:levels/crash_course_neo/show_tutorial_message

#tell players how to reset if they're ever off course
execute as @a[tag=!noTutorial,tag=!told2Reset,scores={actionbarState=6}] at @s run function sprint_racer_language:levels/crash_course/tutorial_reset
execute unless entity @a[scores={actionbarState=6}] run tag @a[tag=told2Reset] remove told2Reset