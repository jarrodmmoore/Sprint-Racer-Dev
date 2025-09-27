function sprint_racer:levels/crash_course/map

#slow on the first lap to absorb information better... just kidding I commented that out nevermind
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160..}] run effect give @a[tag=playing,gamemode=adventure,scores={lapFake=..1}] slowness 1 1 false
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1}] unless entity @a[scores={lapFake=2..}] as @e[tag=itemcontainer] at @s run function sprint_racer:items/container_delete
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1}] if score #halftick value matches 1 unless entity @a[scores={lapFake=2..}] run scoreboard players set @e[tag=node,tag=itemchest,scores={nodeState=1..}] itemBlockState 10
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1}] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=halftick] unless entity @a[scores={lapFake=2..}] run scoreboard players set @e[tag=node,tag=itemchest,scores={nodeState=1..}] itemBlockState 5

#no checkpoint navigator thing when using elytra, don't want to overwhelm new players with it
scoreboard players set @a[tag=!showCheckNav] showCheckNav -4

#make sure players have the book that allows them to toggle the tutorial
tag @a remove hasTutor
tag @a[gamemode=adventure,nbt={Inventory:[{Slot:0b,id:"minecraft:book",components:{"minecraft:custom_data":{tutor:1b}}}]}] add hasTutor
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1,gameTime=164..}] as @a[tag=playing,tag=!noInventory,gamemode=adventure,tag=!hasTutor] run function sprint_racer_language:levels/crash_course/give_tutor_book
tag @a[tag=hasTutor] remove hasTutor

#right click book to toggle tutorial mode
execute as @a[scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand *[custom_data~{tutorON:1b}] at @s run function sprint_racer:levels/crash_course/tutorial_mode_disable
execute as @a[scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand *[custom_data~{tutorOFF:1b}] at @s run function sprint_racer:levels/crash_course/tutorial_mode_enable

#tutorial stuff
#a bunch of these were commented out to prevent text/information overload
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=halftick,scores={gameTime=200..201}] as @a[tag=!noTutorial,scores={tutorProgress=..0}] at @s run function sprint_racer_language:levels/crash_course/tutorial_sprint_gain_speed
#execute as @a[x=1085,y=60,z=272,distance=..5,tag=!noTutorial,scores={tutorProgress=..0}] at @s run function sprint_racer_language:levels/crash_course/tutorial_gold_boost
execute as @a[x=1046,y=60,z=287,distance=..5,tag=!noTutorial,scores={tutorProgress=..1}] at @s run function sprint_racer_language:levels/crash_course/tutorial_emerald_jump
#execute as @a[tag=!noTutorial,scores={check=1..,tutorProgress=..2}] at @s run function sprint_racer_language:levels/crash_course/tutorial_checkpoint_and_reset_item
execute as @a[x=1064,y=68,z=321,distance=..5,tag=!noTutorial,scores={tutorProgress=..3}] at @s run function sprint_racer_language:levels/crash_course/tutorial_resistance_fall
#execute as @a[x=1103,y=60,z=335,distance=..6,tag=!noTutorial,scores={tutorProgress=..4}] at @s run function sprint_racer_language:levels/crash_course/tutorial_effects_combined
execute as @a[tag=!noTutorial,scores={tutorProgress=..5,elytraTimer=1..}] at @s run function sprint_racer_language:levels/crash_course/tutorial_elytra_pad
execute as @a[tag=!noTutorial,scores={tutorProgress=..6}] at @s if block ~ ~ ~ water run function sprint_racer_language:levels/crash_course/tutorial_swim
execute as @a[x=1129,y=61,z=287,distance=..4,tag=!noTutorial,scores={tutorProgress=..7}] at @s run function sprint_racer_language:levels/crash_course/tutorial_switch
#execute as @a[x=1101,y=60,z=272,distance=..9,tag=!noTutorial,scores={tutorProgress=..8,lapFake=2..}] at @s run function sprint_racer_language:levels/crash_course/tutorial_lap_complete
execute as @a[x=1046,y=60,z=287,distance=..5,tag=!noTutorial,scores={lapFake=2..,tutorProgress=..9}] at @s run function sprint_racer_language:levels/crash_course/tutorial_use_items
execute as @a[tag=!noTutorial,scores={lapFake=2..,check=2,tutorProgress=..10}] at @s run function sprint_racer_language:levels/crash_course/tutorial_checkpoints_heal
execute as @a[tag=!noTutorial,scores={lapFake=3..,tutorProgress=..11}] at @s run function sprint_racer_language:levels/crash_course/tutorial_hit_checkpoints_please

execute as @a[tag=!noTutorial,tag=!told2Reset,scores={actionbarState=6}] at @s run function sprint_racer_language:levels/crash_course/tutorial_reset
execute unless entity @a[scores={actionbarState=6}] run tag @a[tag=told2Reset] remove told2Reset