#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#spawn minotaur at 160
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=..160}] run kill @e[type=item_display,tag=minotaur]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] run function sprint_racer:levels/minotaur_maze/minotaur/spawn_new_minotaur
#spawn 30 with touhou cheat code because funny
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160,gameState=3}] if entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=40a] run function sprint_racer:levels/minotaur_maze/minotaur/spawn_new_minotaur
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160,gameState=3}] if entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=40a] run function sprint_racer:levels/minotaur_maze/minotaur/spawn_new_minotaur