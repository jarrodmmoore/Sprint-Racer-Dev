scoreboard players reset @s dropMap
effect clear @s speed
execute unless block ~ 1 ~ cyan_wool run playsound minecraft:entity.enderman.teleport master @s ~ 100000 ~ 100000
execute unless block ~ 1 ~ cyan_wool positioned 2472 103 268 positioned ~-.5 ~ ~-.5 rotated 90 0 run tp @s 2477 98 267 90 0