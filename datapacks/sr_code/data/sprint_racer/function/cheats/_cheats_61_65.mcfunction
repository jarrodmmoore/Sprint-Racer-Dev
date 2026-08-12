#loop for cheat 61 only needs to be active during race mode
execute if entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=61a] if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1,gameTime=200..99999}] unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gamemodePresetA=2}] run function sprint_racer:cheats/61a

execute if entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=62a] run function sprint_racer:cheats/62a