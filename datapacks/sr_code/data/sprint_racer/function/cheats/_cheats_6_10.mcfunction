#06a
execute if entity @e[tag=cheats,type=armor_stand,tag=06a] run tag @e[tag=ai,tag=!gtgfast] add gtgfast

#07a
execute if entity @e[tag=cheats,type=armor_stand,tag=07a] run function sprint_racer:cheats/07a

#08a
execute if entity @e[tag=cheats,type=armor_stand,tag=08a] run function sprint_racer:cheats/08a

#09a
execute if entity @e[tag=cheats,type=armor_stand,tag=09a] run function sprint_racer:cheats/09a

#10a
execute if entity @e[tag=cheats,type=armor_stand,tag=10a] if entity @e[tag=w,scores={gameState=1}] run function sprint_racer:cheats/10a