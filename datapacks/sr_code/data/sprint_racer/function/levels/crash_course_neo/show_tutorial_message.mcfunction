#for once in my life, i've decided not to be a complete knob by making 10 different 2-line-long function files

execute if score @s tutorialMessage matches 1 run tellraw @s ["",{"translate":"sr.tutorial.tutorial","color":"aqua","bold":true},{"text":" "},{"translate":"sr.tutorial.sprint_to_gain_speed","color":"white","bold":false}]
execute if score @s tutorialMessage matches 1 run scoreboard players set @s tutorProgress 1

execute if score @s tutorialMessage matches 2 run tellraw @s ["",{"translate":"sr.tutorial.tutorial","color":"aqua","bold":true},{"text":" "},{"translate":"sr.tutorial.emerald_jump_1","color":"green","bold":false},{"translate":"sr.tutorial.emerald_jump_2","color":"white"}]
execute if score @s tutorialMessage matches 2 run scoreboard players set @s tutorProgress 2

execute if score @s tutorialMessage matches 3 run tellraw @s ["",{"translate":"sr.tutorial.tutorial","color":"aqua","bold":true},{"text":" "},{"translate":"sr.tutorial.resistance_1","color":"gray","bold":false},{"translate":"sr.tutorial.resistance_2","color":"white"}]
execute if score @s tutorialMessage matches 3 run scoreboard players set @s tutorProgress 3

execute if score @s tutorialMessage matches 4 run tellraw @s ["",{"translate":"sr.tutorial.tutorial","color":"aqua","bold":true},{"text":" "},{"translate":"sr.tutorial.use_item_by_pressing","color":"white","bold":false},{"keybind":"key.use","color":"yellow","bold":false}]
execute if score @s tutorialMessage matches 4 run scoreboard players set @s tutorProgress 4

execute if score @s tutorialMessage matches 5 run tellraw @s ["",{"translate":"sr.tutorial.tutorial","color":"aqua","bold":true},{"text":" "},{"translate":"sr.tutorial.switch_alters_track","color":"white","bold":false}]
execute if score @s tutorialMessage matches 5 run scoreboard players set @s tutorProgress 5

execute if score @s tutorialMessage matches 6 run tellraw @s ["",{"translate":"sr.tutorial.tutorial","color":"aqua","bold":true},{"text":" "},{"translate":"sr.tutorial.hit_checkpoints","color":"white"}]
execute if score @s tutorialMessage matches 6 run scoreboard players set @s tutorProgress 6

execute if score @s tutorialMessage matches 7 run tellraw @s ["",{"translate":"sr.tutorial.tutorial","color":"aqua","bold":true},{"text":" "},{"translate":"sr.tutorial.swimming_is_fast","color":"white","bold":false}]
execute if score @s tutorialMessage matches 7 run scoreboard players set @s tutorProgress 7

execute if score @s tutorialMessage matches 8 run tellraw @s ["",{"translate":"sr.tutorial.tutorial","color":"aqua","bold":true},{"text":" "},{"translate":"sr.tutorial.elytra_pad","color":"white","bold":false}]
execute if score @s tutorialMessage matches 8 run scoreboard players set @s tutorProgress 8



scoreboard players reset @s tutorialMessage