playsound minecraft:block.slime_block.fall master @a ~ ~ ~ 2 .5
playsound minecraft:block.slime_block.fall master @a ~ ~ ~ 2 .8
playsound minecraft:block.slime_block.fall master @a ~ ~ ~ 2 1.1

#honka
execute store result score #test value run random value 1..5
execute if score #test value matches 1 run playsound minecraft:sr_horns/honk7 master @a -1258 81 -2973 1.6 .75