execute store result score #sound value run random value 1..4
$execute if score #sound value matches 1 run playsound minecraft:custom_sfx/explode1 master @a ~ ~ ~ $(volume) $(pitch)
$execute if score #sound value matches 2 run playsound minecraft:custom_sfx/explode2 master @a ~ ~ ~ $(volume) $(pitch)
$execute if score #sound value matches 3 run playsound minecraft:custom_sfx/explode3 master @a ~ ~ ~ $(volume) $(pitch)
$execute if score #sound value matches 4 run playsound minecraft:custom_sfx/explode4 master @a ~ ~ ~ $(volume) $(pitch)