scoreboard players operation #temp value = @s checkpointID

execute if entity @s[scores={visualLength=1}] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
execute if entity @s[scores={visualLength=1}] run tellraw @s ["",{"keybind":"key.swapOffhand","color":"yellow"},{"translate":"sr.editor.config.checkpoint.set_point_1","color":"green"}]
execute if entity @s[scores={visualLength=1}] run scoreboard players add @s visualLength 1

#set point 1
execute if entity @s[tag=swappedHands,scores={visualLength=2}] run function sprint_racer:game_logic/2/checkpoint_menu_edit/visual_line/set_point_1

#remember where point 1 is
execute as @e[tag=v_point1] if score @s checkpointID = #temp value run scoreboard players set @s lifespan 10

execute if entity @s[scores={visualLength=3}] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
execute if entity @s[scores={visualLength=3}] run tellraw @s ["",{"keybind":"key.swapOffhand","color":"yellow"},{"translate":"sr.editor.config.checkpoint.set_point_2","color":"green"}]
execute if entity @s[scores={visualLength=3}] run scoreboard players add @s visualLength 1

#set point 2 (and be done)
execute if entity @s[tag=swappedHands,scores={visualLength=4}] run function sprint_racer:game_logic/2/checkpoint_menu_edit/visual_line/set_point_2

#done?
execute if entity @s[scores={visualLength=5}] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
execute if entity @s[scores={visualLength=5}] run tellraw @s ["",{"translate":"sr.editor.config.checkpoint.set_point_done","color":"green"}]
execute if entity @s[scores={visualLength=5}] run tag @s remove setVisualLine