#no smuggling
clear @s
scoreboard players set @s inputCooldown 20

#clear weather by default
weather clear

#go to track
tag @a add dontWarp
tag @s remove dontWarp
tag @s add dontSetGamemode
function sprint_racer:game_logic/0/worldmap_choose
tag @a remove dontWarp
tag @s remove dontSetGamemode

#warp sound effect
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ 100000 ~ 100000

#get elytra
execute at @s run function sprint_racer:items/item_tick/normal/equip_elytra

#effects
effect give @s resistance 4 250 true
effect clear @s night_vision
effect give @s blindness 1 1 true