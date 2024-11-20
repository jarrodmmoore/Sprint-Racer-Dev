#generate a seed
function sprint_racer:game_logic/1/tactics/generate_seed

#setup AI stuff..
scoreboard players set @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9}] aiTacticsA 1
scoreboard players set @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9}] aiTacticsB 1

#all players get 3 items to start
execute as @e[tag=activeplayer] at @s run function sprint_racer:game_logic/1/tactics/give_3