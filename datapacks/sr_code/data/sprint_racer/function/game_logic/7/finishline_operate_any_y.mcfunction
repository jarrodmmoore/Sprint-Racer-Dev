tag @e[tag=activeplayer,scores={check=1..},dx=9,dy=400,dz=9] add finTarget

#don't have a proper y range? get one.
execute unless entity @s[tag=checkHasYRange] run function sprint_racer:game_logic/2/checkpoint_menu_edit/get_default_y_range

#finTarget must be within our range
execute store result score #y_check_min value run data get entity @s Pos[1] 10000
scoreboard players set #10000 value 10000
scoreboard players operation #math value = @s check_y_max
scoreboard players operation #math value *= #10000 value
scoreboard players operation #y_check_max value = #y_check_min value
scoreboard players operation #y_check_max value += #math value
scoreboard players operation #math value = @s check_y_min
scoreboard players operation #math value *= #10000 value
scoreboard players operation #y_check_min value += #math value
execute as @e[tag=finTarget] if score @s coord_y > #y_check_max value run tag @s remove finTarget
execute as @e[tag=finTarget] if score @s coord_y < #y_check_min value run tag @s remove finTarget

scoreboard players operation @e[tag=finTarget] nCheck = @s nCheck
execute as @e[tag=finTarget] run scoreboard players operation @s nCheck -= @s check
tag @e[tag=finTarget,scores={nCheck=..0}] add finishLap

execute if entity @s[tag=finWarn] run tag @a[tag=finTarget,scores={nCheck=1..}] add finWarn
execute if entity @s[tag=finWrongWay] run tag @a[tag=finTarget,scores={nCheck=..-1}] add finWrongWay

execute as @a[tag=finTarget,tag=skip_available,scores={nCheck=1}] if entity @e[type=armor_stand,tag=50a,tag=cheats,x=1548,y=148,z=422,distance=..1] run function sprint_racer:cheats/skip_checkpoint_on_finishline

execute as @a[tag=finTarget,tag=finWarn,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..6}] actionbarState 8
execute as @a[tag=finTarget,tag=finWarn,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..6}] actionbarState2 40

execute as @a[tag=finTarget,tag=finWrongWay,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..7}] actionbarState 7
execute as @a[tag=finTarget,tag=finWrongWay,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..7}] actionbarState2 40

tag @e[tag=finTarget] remove finTarget