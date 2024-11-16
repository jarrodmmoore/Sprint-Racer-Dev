tag @e[tag=activeplayer,dx=9,dy=400,dz=9] add checkTarget

#don't have a proper y range? get one.
execute unless entity @s[tag=checkHasYRange] run function sprint_racer:game_logic/2/checkpoint_menu_edit/get_default_y_range

#checkTarget must be within our range
execute store result score #y_check_min value run data get entity @s Pos[1] 10000
scoreboard players set #10000 value 10000
scoreboard players operation #math value = @s check_y_max
scoreboard players operation #math value *= #10000 value
scoreboard players operation #y_check_max value = #y_check_min value
scoreboard players operation #y_check_max value += #math value
scoreboard players operation #math value = @s check_y_min
scoreboard players operation #math value *= #10000 value
scoreboard players operation #y_check_min value += #math value
execute as @e[tag=checkTarget] if score @s coord_y > #y_check_max value run tag @s remove checkTarget
execute as @e[tag=checkTarget] if score @s coord_y < #y_check_min value run tag @s remove checkTarget

scoreboard players operation @e[tag=checkTarget] nCheck = @s check
execute as @e[tag=checkTarget] run scoreboard players operation @s nCheck -= @s check
tag @e[tag=checkTarget,scores={nCheck=1}] add checkIncrement

execute if entity @s[tag=checkWarn] run tag @a[tag=checkTarget,scores={nCheck=2..}] add checkWarn
execute if entity @s[tag=checkWrongWay] run tag @a[tag=checkTarget,scores={nCheck=..-1}] add checkWrongWay
execute if entity @s[tag=checkText] run tag @a[tag=checkTarget,tag=checkIncrement] add checkText
execute if entity @s[tag=checkSound] run tag @a[tag=checkTarget,tag=checkIncrement] add checkSound

execute as @a[tag=checkTarget,tag=skip_available,scores={nCheck=2}] if entity @e[type=armor_stand,tag=50a,tag=cheats,x=1550,y=148,z=406,distance=..1] at @s run function sprint_racer:cheats/skip_checkpoint

execute as @a[tag=checkTarget] run function sprint_racer:game_logic/7/checkpoint_player_feedback

tag @e[tag=checkTarget] remove checkTarget