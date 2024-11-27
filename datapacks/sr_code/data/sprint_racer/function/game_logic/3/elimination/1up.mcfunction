execute if entity @s[tag=AImaster] run scoreboard players operation #getPlayer value = @s playerID
execute if entity @s[tag=AImaster] as @e[tag=ai] if score @s playerID = #getPlayer value run tag @s add show1UP

#get a life
scoreboard players add @s playerLives 1

#1UP text
execute if entity @s[type=player,gamemode=adventure] if loaded ~ ~ ~ run summon text_display ~ ~2.2 ~ {alignment:center,text:'{"text":"sr.game.1up","color":"white","bold":true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[tag=AImaster] as @e[tag=show1UP] at @s if loaded ~ ~ ~ run summon text_display ~ ~2.2 ~ {alignment:center,text:'{"text":"sr.game.1up","color":"white","bold":true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute as @e[tag=setscore,distance=..3] run function sprint_racer:damage_logic/damage_number_entity_slow
tellraw @s[type=player,tag=!minChat] ["",{"translate":"sr.game.reached_ko_goal","color":"green"},{"text":" "},{"text":" "},{"text":"+1","color":"red","bold":true},{"text":"\uE013","color":"red"}]

#feedback
execute if entity @s[type=player,gamemode=!adventure] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.75 0.75
execute if entity @s[type=player,gamemode=adventure] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1.75 0.75
execute if entity @s[type=player,gamemode=adventure] run particle heart ~ ~1 ~ 1 1 1 0 20 force
execute if entity @s[tag=AImaster] as @e[tag=show1UP] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1.75 0.75
execute if entity @s[tag=AImaster] as @e[tag=show1UP] at @s run particle heart ~ ~1 ~ 1 1 1 0 20 force

#next goal is always 1 steeper than the last
scoreboard players set #newGoal value 999
execute if score @s KOgoal matches ..3 run scoreboard players set #newGoal value 7
execute if score @s KOgoal matches 4..7 run scoreboard players set #newGoal value 12
execute if score @s KOgoal matches 8..12 run scoreboard players set #newGoal value 18
execute if score @s KOgoal matches 13..18 run scoreboard players set #newGoal value 25
execute if score @s KOgoal matches 18..25 run scoreboard players set #newGoal value 33
execute if score @s KOgoal matches 26..33 run scoreboard players set #newGoal value 42
execute if score @s KOgoal matches 34..42 run scoreboard players set #newGoal value 52
execute if score @s KOgoal matches 43..52 run scoreboard players set #newGoal value 63
execute if score @s KOgoal matches 53..63 run scoreboard players set #newGoal value 75
execute if score @s KOgoal matches 64..75 run scoreboard players set #newGoal value 88
execute if score @s KOgoal matches 76..88 run scoreboard players set #newGoal value 102
scoreboard players operation @s KOgoal = #newGoal value

#goal increase caps out at 15
execute if score @s KOgoal matches 89.. if score #newGoal value matches 999 run scoreboard players add @s KOgoal 15

#clean up tags
tag @e[tag=show1UP] remove show1UP