scoreboard players add @e[tag=w,type=armor_stand] tvPoolNum 1

#skip over praia classic if necessary cheat isn't found
execute if entity @e[tag=w,type=armor_stand,scores={tvPoolNum=37,tvPoolMode=1}] unless entity @e[type=armor_stand,tag=cheats,tag=56] run scoreboard players add @e[tag=w,type=armor_stand] tvPoolNum 1

#skip over casino chase if COPPA mode is enabled
execute if entity @e[tag=w,type=armor_stand,tag=COPPA,scores={tvPoolNum=46,tvPoolMode=1}] run scoreboard players add @e[tag=w,type=armor_stand] tvPoolNum 1

#skip over cotton void necessary cheat isn't found
execute if entity @e[tag=w,type=armor_stand,scores={tvPoolNum=50,tvPoolMode=1}] unless entity @e[type=armor_stand,tag=cheats,tag=38] run scoreboard players add @e[tag=w,type=armor_stand] tvPoolNum 1

#show secret track?
#execute if entity @e[tag=w,type=armor_stand,scores={tvPoolNum=50,tvPoolMode=1}] if entity @e[type=armor_stand,tag=cheats,tag=38] run scoreboard players set #secret_track_r value 1
execute if entity @e[tag=w,type=armor_stand,scores={tvPoolNum=20,tvPoolMode=2}] if entity @e[type=armor_stand,tag=cheats,tag=46] run scoreboard players set #secret_track_b value 1

function sprint_racer:game_logic/9/keep_in_bounds