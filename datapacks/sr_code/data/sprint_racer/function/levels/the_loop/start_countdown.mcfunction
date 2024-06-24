#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,scores={gameTime=100}] run fill -598 186 148 -598 187 148 red_stained_glass
execute if entity @e[tag=w,scores={gameTime=110}] run fill -598 186 147 -598 187 147 red_stained_glass
execute if entity @e[tag=w,scores={gameTime=120}] run fill -598 186 146 -598 187 146 red_stained_glass
execute if entity @e[tag=w,scores={gameTime=130}] run fill -598 186 145 -598 187 145 red_stained_glass
execute if entity @e[tag=w,scores={gameTime=140}] run fill -598 186 144 -598 187 144 red_stained_glass
execute if entity @e[tag=w,scores={gameTime=150}] run fill -598 186 143 -598 187 143 red_stained_glass

execute if entity @e[tag=w,scores={gameTime=160}] run fill -598 186 143 -598 187 148 lime_stained_glass

execute if entity @e[tag=w,scores={gameTime=240}] run fill -598 186 143 -598 187 148 white_stained_glass