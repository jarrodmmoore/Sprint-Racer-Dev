#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=100}] run clone 1794 101 2663 1802 107 2671 1788 81 2658
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=120}] run clone 1794 108 2663 1802 114 2671 1788 81 2658
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=140}] run clone 1794 115 2663 1802 121 2671 1788 81 2658
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run clone 1794 122 2663 1802 128 2671 1788 81 2658

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=220}] run fill 1788 81 2658 1796 87 2666 white_concrete replace light_blue_concrete
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=220}] run fill 1788 81 2658 1796 87 2666 white_concrete replace magenta_concrete

