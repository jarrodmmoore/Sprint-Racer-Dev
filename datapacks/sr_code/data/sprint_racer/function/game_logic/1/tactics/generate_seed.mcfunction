execute as @e[tag=w,type=armor_stand,limit=1] run function sprint_racer:game_logic/1/tactics/load_tactics_odds
execute as @e[type=armor_stand,tag=random,scores={rNumber=1..50}] run function sprint_racer:game_logic/1/tactics/get_random

scoreboard objectives remove tacticsSequence
scoreboard objectives add tacticsSequence dummy