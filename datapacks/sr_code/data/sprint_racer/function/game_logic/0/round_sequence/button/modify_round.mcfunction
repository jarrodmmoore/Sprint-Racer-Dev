execute store result storage sprint_racer:func_args num1 int 1 run data get entity @s data.index 1
function sprint_racer:game_logic/0/round_sequence/button/modify_round_macro with storage sprint_racer:func_args

#change text color without recalculating everyting
execute if score #math value matches 1 on passengers run data modify entity @s text.color set value aqua
execute if score #math value matches 2 on passengers run data modify entity @s text.color set value red
execute if score #math value matches 3 on passengers run data modify entity @s text.color set value white
execute if score #math value matches 4 on passengers run data modify entity @s text.color set value yellow

#let player know what they did
scoreboard players set @e[type=text_display,tag=showRoundMode] lifespan 0
execute if score #math value matches 1 run summon text_display ~-.05 ~.3 ~ {Tags:["setLife","showRoundMode"],Rotation:[90f,0f],text:{translate:"sr.lobby.race",color:aqua},background:-16777216,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute if score #math value matches 2 run summon text_display ~-.05 ~.3 ~ {Tags:["setLife","showRoundMode"],Rotation:[90f,0f],text:{translate:"sr.lobby.battle",color:red},background:-16777216,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute if score #math value matches 3 run summon text_display ~-.05 ~.3 ~ {Tags:["setLife","showRoundMode"],Rotation:[90f,0f],text:{translate:"sr.lobby.random_gamemode",color:white},background:-16777216,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute if score #math value matches 4 run summon text_display ~-.05 ~.3 ~ {Tags:["setLife","showRoundMode"],Rotation:[90f,0f],text:{translate:"sr.lobby.choice",color:yellow},background:-16777216,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
scoreboard players set @e[type=text_display,tag=setLife] lifespan 5
tag @e[type=text_display,tag=setLife] remove setLife

#feedback
playsound block.note_block.hat master @a