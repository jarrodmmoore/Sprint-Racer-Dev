setblock 1556 78 406 air
execute if score #commandBlockCheck value matches 0 run tellraw @a ["",{"text":"\uE075 Command blocks are not enabled. Please enable command blocks, or parts of Sprint Racer won't work properly.","color":"red","bold":true}]
execute if score #commandBlockCheck value matches 0 run scoreboard players set #commandBlockCheck value -1