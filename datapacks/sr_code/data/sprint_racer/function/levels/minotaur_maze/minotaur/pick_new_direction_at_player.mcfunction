#anger noise if we weren't already angry
execute if entity @s[tag=!isAngry] run playsound minecraft:entity.ravager.roar master @a ~ ~ ~ 2.5 1.1

#we saw a player! we're mad
tag @s add isAngry

#project out some possible move directions
execute if entity @e[tag=pickViable,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1}] positioned ~2 ~ ~ if loaded ~ ~ ~ run summon marker ~ ~ ~ {Tags:["minotaurDirectionFeeler","minoDir1"]}
execute if entity @e[tag=pickViable,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=2}] positioned ~ ~ ~2 if loaded ~ ~ ~ run summon marker ~ ~ ~ {Tags:["minotaurDirectionFeeler","minoDir2"]}
execute if entity @e[tag=pickViable,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=3}] positioned ~-2 ~ ~ if loaded ~ ~ ~ run summon marker ~ ~ ~ {Tags:["minotaurDirectionFeeler","minoDir3"]}
execute if entity @e[tag=pickViable,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=4}] positioned ~ ~ ~-2 if loaded ~ ~ ~ run summon marker ~ ~ ~ {Tags:["minotaurDirectionFeeler","minoDir4"]}

#figure out which direction gets us closest to the person we'd like to eat
scoreboard players set #math value 0
execute as @e[tag=minotaurTarget,distance=..35,sort=nearest] at @s as @e[limit=1,sort=nearest,tag=minotaurDirectionFeeler,type=marker,distance=..42] run function sprint_racer:levels/minotaur_maze/minotaur/pick_new_direction_at_player_confirm

#adopt direction
execute if score #math value matches 1..4 run scoreboard players operation @s lastTeleport = #math value

#got direction? need to move 5 blocks to next junction
execute if score #math value matches 1..4 run scoreboard players set @s age 5

#cleanup
kill @e[tag=minotaurDirectionFeeler,type=marker,distance=..3]
tag @e[tag=minotaurTarget,distance=..35] remove minotaurTarget