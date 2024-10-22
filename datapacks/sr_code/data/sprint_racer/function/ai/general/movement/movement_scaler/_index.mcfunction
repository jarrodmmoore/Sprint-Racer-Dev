#face the right direction so we don't look silly
#execute if entity @s[nbt={OnGround:1b}] unless entity @s[scores={elytraTimer=1..}] unless entity @s[type=wither] unless entity @s[tag=aiDontFace] run function sprint_racer:ai/general/movement/face_target
#execute if score @s aiAirTime matches ..0 unless entity @s[scores={elytraTimer=1..}] unless entity @s[type=wither] unless entity @s[tag=aiDontFace] run function sprint_racer:ai/general/movement/face_target
execute unless entity @s[scores={elytraTimer=1..}] unless entity @s[type=wither] unless entity @s[tag=aiDontFace] run function sprint_racer:ai/general/movement/face_target_simple
tag @s[tag=aiDontFace] remove aiDontFace
#also store rotation please
execute store result score @s rot_yaw100 run data get entity @s Rotation[0] 1000
execute store result score @s rot_pitch100 run data get entity @s Rotation[1] 1000

function sprint_racer:ai/general/movement/movement_scaler/_index_not_halftick
#execute if entity @e[tag=w,type=armor_stand,tag=!halftick] run function sprint_racer:ai/general/movement/movement_scaler/_index_not_halftick
#execute if score #halftick value matches 1 run function sprint_racer:ai/general/movement/movement_scaler/_index_halftick

execute if entity @s[tag=gtgfast,scores={moveState=..2}] run function sprint_racer:ai/general/movement/movement_scaler/gtgfast/_index

execute if entity @s[scores={moveState=3..}] run function sprint_racer:ai/general/movement/movement_scaler/sneaking/_index