#loop for cheat 61 only needs to be active during race mode
execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,type=armor_stand,tag=61a] if entity @e[tag=w,type=armor_stand,scores={gameState=1,gameTime=200..99999}] unless entity @e[tag=w,type=armor_stand,scores={gamemodePresetA=2}] run function sprint_racer:cheats/61a

execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,type=armor_stand,tag=62a] run function sprint_racer:cheats/62a