#do this again in some amount of time
scoreboard players set @s bounceCount 10

#random noise
execute store result score #math value run random value 1..6
execute if score #math value matches 1 run playsound minecraft:minotaur/wheel1 master @a[distance=..30] ~ ~ ~ 1.2 1 .05
execute if score #math value matches 2 run playsound minecraft:minotaur/wheel2 master @a[distance=..30] ~ ~ ~ 1.2 1 .05
execute if score #math value matches 3 run playsound minecraft:minotaur/wheel3 master @a[distance=..30] ~ ~ ~ 1.2 1 .05
execute if score #math value matches 4 run playsound minecraft:minotaur/wheel4 master @a[distance=..30] ~ ~ ~ 1.2 1 .05
execute if score #math value matches 5 run playsound minecraft:minotaur/wheel5 master @a[distance=..30] ~ ~ ~ 1.2 1 .05
execute if score #math value matches 6 run playsound minecraft:minotaur/wheel6 master @a[distance=..30] ~ ~ ~ 1.2 1 .05