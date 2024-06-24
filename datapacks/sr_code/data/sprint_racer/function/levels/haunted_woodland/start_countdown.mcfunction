#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,scores={gameTime=100}] run setblock 102 65 1690 minecraft:jack_o_lantern[facing=west]
execute if entity @e[tag=w,scores={gameTime=120}] run setblock 102 65 1692 minecraft:jack_o_lantern[facing=west]
execute if entity @e[tag=w,scores={gameTime=140}] run setblock 102 65 1694 minecraft:jack_o_lantern[facing=west]

execute if entity @e[tag=w,scores={gameTime=160}] run summon minecraft:lightning_bolt 161 60 1692

execute if entity @e[tag=w,scores={gameTime=240}] run setblock 102 65 1690 minecraft:carved_pumpkin[facing=west]
execute if entity @e[tag=w,scores={gameTime=240}] run setblock 102 65 1692 minecraft:carved_pumpkin[facing=west]
execute if entity @e[tag=w,scores={gameTime=240}] run setblock 102 65 1694 minecraft:carved_pumpkin[facing=west]

#shortcut is open by default
execute if entity @e[tag=w,scores={gameTime=140}] run fill 96 47 1730 96 49 1733 minecraft:air
execute if entity @e[tag=w,scores={gameTime=140}] run fill 96 50 1731 96 50 1732 minecraft:air
execute if entity @e[tag=w,scores={gameTime=140}] run fill 107 60 1733 107 60 1735 lime_wool
execute if entity @e[tag=w,scores={gameTime=140}] run tag @e[tag=w,type=armor_stand] add switchON