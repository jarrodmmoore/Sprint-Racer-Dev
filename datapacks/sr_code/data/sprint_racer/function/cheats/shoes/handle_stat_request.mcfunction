execute if score @s cStatRequest matches 0 run function sprint_racer:cheats/shoes/0
execute if score @s cStatRequest matches 1 run function sprint_racer:cheats/shoes/1
execute if score @s cStatRequest matches 2 run function sprint_racer:cheats/shoes/2
execute if score @s cStatRequest matches 3 run function sprint_racer:cheats/shoes/3
execute if score @s cStatRequest matches 4 run function sprint_racer:cheats/shoes/4
execute if score @s cStatRequest matches 5 run function sprint_racer:cheats/shoes/5
scoreboard players operation @s cStatRequest = @s cStatType

tellraw @s[tag=!minChat] ["",{text:"✔ ",color:"green"},{translate:"sr.cheats.shoes.stats_updated",italic:true}]
execute at @s run playsound minecraft:entity.player.breath master @s ~ 100000 ~ 100000 1.3