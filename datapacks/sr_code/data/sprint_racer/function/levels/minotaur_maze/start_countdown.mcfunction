#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#spawn minotaur at 160
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=..160,gameState=3}] run kill @e[type=item_display,tag=minotaur]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160,gameState=3}] run function sprint_racer:levels/minotaur_maze/minotaur/spawn_new_minotaur