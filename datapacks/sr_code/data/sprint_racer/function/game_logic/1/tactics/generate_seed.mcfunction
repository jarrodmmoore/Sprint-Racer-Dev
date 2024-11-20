execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] run function sprint_racer:game_logic/1/tactics/load_tactics_odds
execute as @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] run function sprint_racer:game_logic/1/tactics/get_random

scoreboard objectives remove tacticsSequence
scoreboard objectives add tacticsSequence dummy