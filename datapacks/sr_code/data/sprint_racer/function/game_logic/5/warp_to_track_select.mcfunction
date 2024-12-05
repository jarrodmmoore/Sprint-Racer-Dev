#teleport and spawnpoint
tp @s 2472 100 268 0 0
execute at @s run function sprint_racer:game_logic/5/set_spawnpoint
gamerule doDaylightCycle false

#stop ambient noise
stopsound @s ambient

#no smuggling
tag @s remove fr_nightvision
clear @s
scoreboard players set @s inputCooldown 20

#warp sound effect
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ 100000 ~ 100000

#don't die
effect give @s resistance 4 250 true
effect give @s slow_falling 1 0 true