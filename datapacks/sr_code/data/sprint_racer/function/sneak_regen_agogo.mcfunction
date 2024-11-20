#calculate how much less hp we have than our max
scoreboard players operation #dHP value = @s hp
scoreboard players operation #dHP value -= @s cStatHP

#apply heals
execute unless entity @e[tag=52a,tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] run effect give @s minecraft:instant_health 1 0 true

#cheat code?
execute if entity @e[tag=24a,tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] if items entity @s weapon.mainhand *[custom_data~{normalitem:1b}] run function sprint_racer:items/crouch_enchant

#battle mode, tell the game that we do in fact know how to heal
execute if entity @s[scores={heal_aware=50..}] run scoreboard players set @s heal_aware 0
execute if score global gameState matches 3 if entity @s[scores={heal_aware=1..}] run scoreboard players set @s heal_aware 0

#numbers based on #dHP
#summon text_display for number
execute if score #dHP value matches ..-4 run summon text_display ~ ~1.8 ~ {alignment:center,text:'{"text":"+4","color":"light_purple","bold":true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if score #dHP value matches -3 run summon text_display ~ ~1.8 ~ {alignment:center,text:'{"text":"+3","color":"light_purple","bold":true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if score #dHP value matches -2 run summon text_display ~ ~1.8 ~ {alignment:center,text:'{"text":"+2","color":"light_purple","bold":true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if score #dHP value matches -1 run summon text_display ~ ~1.8 ~ {alignment:center,text:'{"text":"+1","color":"light_purple","bold":true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if score #dHP value matches 0.. run summon text_display ~ ~1.8 ~ {alignment:center,text:'{"text":"+0","color":"light_purple","bold":true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute as @e[tag=setscore,distance=..3] run function sprint_racer:damage_logic/damage_number_entity


execute if score #dHP value matches ..-1 run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 1
execute if score #dHP value matches 0.. run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 2

#reset regen timer
scoreboard players set @s regenTimer 0

#longer regen time in battle mode
execute if score global gameState matches 3 run scoreboard players set @s regenTimer -6