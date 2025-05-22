scoreboard players operation @s coord_x2 = @s coord_x
scoreboard players operation @s coord_y2 = @s coord_y
scoreboard players operation @s coord_z2 = @s coord_z

execute as @s store result score @s coord_x run data get entity @s Pos[0] 10000
execute as @s store result score @s coord_y run data get entity @s Pos[1] 10000
execute as @s store result score @s coord_z run data get entity @s Pos[2] 10000

execute as @s store result score @s rot_yaw run data get entity @s Rotation[0]
execute if entity @s[scores={rot_yaw=..-1}] run scoreboard players add @s rot_yaw 360

execute as @s store result score @s rot_pitch run data get entity @s Rotation[1]

scoreboard players operation @s coord_dx = @s coord_x
scoreboard players operation @s coord_dx -= @s coord_x2
scoreboard players operation @s coord_dy = @s coord_y
scoreboard players operation @s coord_dy -= @s coord_y2
scoreboard players operation @s coord_dz = @s coord_z
scoreboard players operation @s coord_dz -= @s coord_z2

scoreboard players set @s[scores={rot_yaw=..22}] faceDirection 5
scoreboard players set @s[scores={rot_yaw=23..67}] faceDirection 6
scoreboard players set @s[scores={rot_yaw=68..112}] faceDirection 7
scoreboard players set @s[scores={rot_yaw=113..157}] faceDirection 8
scoreboard players set @s[scores={rot_yaw=158..202}] faceDirection 1
scoreboard players set @s[scores={rot_yaw=203..247}] faceDirection 2
scoreboard players set @s[scores={rot_yaw=248..292}] faceDirection 3
scoreboard players set @s[scores={rot_yaw=293..327}] faceDirection 4
scoreboard players set @s[scores={rot_yaw=328..}] faceDirection 5

#not related but i'm putting this stuff here
scoreboard players add @s timeSinceDeath 1
execute if score #halftick value matches 1 run scoreboard players add @s timeSinceDeath 1
scoreboard players remove @s[tag=!showCheckNav,scores={showCheckNav=1..}] showCheckNav 1

tag @s[tag=poisoned] remove poisoned
execute if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run tag @s add poisoned

#handle triggers, too
scoreboard players enable @s triggerOption
execute if score @s triggerOption matches -2147483648..2147483647 run function sprint_racer:boq/trigger_option
execute if entity @s[gamemode=creative] run scoreboard players enable @s triggerEditor
execute if score @s triggerEditor matches -2147483648..2147483647 run function sprint_racer:boq/trigger_editor