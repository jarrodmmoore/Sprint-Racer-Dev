#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=100}] run fill -298 87 -1579 -298 88 -1578 red_stained_glass
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=120}] run fill -298 87 -1576 -298 88 -1575 red_stained_glass
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=140}] run fill -298 87 -1573 -298 88 -1572 red_stained_glass

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run fill -298 87 -1579 -298 88 -1578 lime_stained_glass
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run fill -298 87 -1576 -298 88 -1575 lime_stained_glass
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run fill -298 87 -1573 -298 88 -1572 lime_stained_glass

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=240}] run fill -298 87 -1579 -298 88 -1578 white_stained_glass
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=240}] run fill -298 87 -1576 -298 88 -1575 white_stained_glass
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=240}] run fill -298 87 -1573 -298 88 -1572 white_stained_glass
