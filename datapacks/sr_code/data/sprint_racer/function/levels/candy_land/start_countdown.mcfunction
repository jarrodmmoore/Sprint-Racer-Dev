#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#make sure switch is off when race starts
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run fill -1206 75 -2924 -1206 77 -2922 warped_fence
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run fill -1203 81 -2955 -1201 81 -2955 red_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run tag @e[tag=w,type=armor_stand] remove switchON