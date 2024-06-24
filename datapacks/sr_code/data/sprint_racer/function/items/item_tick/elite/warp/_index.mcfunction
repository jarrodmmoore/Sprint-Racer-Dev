scoreboard players reset @s useEye
clear @s flint[custom_data~{elite11:1b}] 1

tag @s add dTPsound
tag @s add dTPparticle
tag @s add delayTP

tag @s remove warpLobby
tag @s remove warpRace
tag @s remove warpBattle
tag @s remove warpBattleTA

execute if entity @e[tag=w,type=armor_stand,scores={gameState=0}] run tag @s add warpLobby
execute if entity @e[tag=w,type=armor_stand,scores={gameState=1}] run tag @s add warpRace
execute if entity @e[tag=w,tag=!teamplay,type=armor_stand,scores={gameState=3}] run tag @s add warpBattle
execute if entity @e[tag=w,tag=teamplay,type=armor_stand,scores={gameState=3}] run tag @s add warpBattleTeam
execute if entity @e[tag=w,type=armor_stand,scores={gameState=5}] run tag @s add warpBattle
execute if entity @e[tag=w,type=armor_stand,scores={gameState=7}] run tag @s add warpRace
execute if entity @e[tag=w,type=armor_stand,scores={gameState=8}] run tag @s add warpBattleTA
execute if entity @e[tag=w,type=armor_stand,scores={gameState=12}] run tag @s add warpRace

execute if entity @s[tag=warpLobby] run function sprint_racer:items/item_tick/elite/warp/lobby
execute if entity @s[tag=warpRace] run function sprint_racer:items/item_tick/elite/warp/race
execute if entity @s[tag=warpBattle] run function sprint_racer:items/item_tick/elite/warp/battle
execute if entity @s[tag=warpBattleTeam] run function sprint_racer:items/item_tick/elite/warp/battle_teams
execute if entity @s[tag=warpBattleTA] run function sprint_racer:items/item_tick/elite/warp/battle_ta
execute if entity @s[tag=!warpRace,tag=!warpBattle,tag=!warpBattleTeam,tag=!warpLobby,tag=!warpBattleTA] run function sprint_racer:items/item_tick/elite/warp/error

tag @s remove warpLobby
tag @s remove warpRace
tag @s remove warpBattle
tag @s remove warpBattleTeam
tag @s remove warpBattleTA

kill @e[distance=..6,tag=clickDetector,type=armor_stand]
kill @e[type=eye_of_ender]