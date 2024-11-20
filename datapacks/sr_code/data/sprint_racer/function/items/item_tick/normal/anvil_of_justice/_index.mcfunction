tag @s remove anvilLobby
tag @s remove anvilRace
tag @s remove anvilBattle

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=0}] run tag @s add anvilLobby
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!teamplay,scores={gameState=1}] run tag @s add anvilRace
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay,scores={gameState=1}] run tag @s add anvilRaceTeams
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!teamplay,scores={gameState=3}] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] run tag @s add anvilBattle
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay,scores={gameState=3}] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] run tag @s add anvilBattleTeams
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!teamplay,scores={gameState=3}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] run tag @s add anvilBattle2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay,scores={gameState=3}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetB=2}] run tag @s add anvilBattleTeams2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=5}] run tag @s add anvilBattle
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!teamplay,scores={gameState=12}] run tag @s add anvilRace
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay,scores={gameState=12}] run tag @s add anvilRaceTeams

execute if entity @s[tag=anvilLobby] run function sprint_racer:items/item_tick/normal/anvil_of_justice/lobby
execute if entity @s[tag=anvilRace] run function sprint_racer:items/item_tick/normal/anvil_of_justice/race
execute if entity @s[tag=anvilRaceTeams,tag=!playerCyan] run function sprint_racer:items/item_tick/normal/anvil_of_justice/race_teams_orange
execute if entity @s[tag=anvilRaceTeams,tag=playerCyan] run function sprint_racer:items/item_tick/normal/anvil_of_justice/race_teams_cyan
execute if entity @s[tag=anvilBattle] run function sprint_racer:items/item_tick/normal/anvil_of_justice/battle
execute if entity @s[tag=anvilBattleTeams,tag=!playerCyan] run function sprint_racer:items/item_tick/normal/anvil_of_justice/battle_teams_orange
execute if entity @s[tag=anvilBattleTeams,tag=playerCyan] run function sprint_racer:items/item_tick/normal/anvil_of_justice/battle_teams_cyan
execute if entity @s[tag=anvilBattle2] run function sprint_racer:items/item_tick/normal/anvil_of_justice/battle_lives
execute if entity @s[tag=anvilBattleTeams2,tag=!playerCyan] run function sprint_racer:items/item_tick/normal/anvil_of_justice/battle_lives_teams_orange
execute if entity @s[tag=anvilBattleTeams2,tag=playerCyan] run function sprint_racer:items/item_tick/normal/anvil_of_justice/battle_lives_teams_cyan
execute if entity @s[tag=!anvilRace,tag=!anvilRaceTeams,tag=!anvilBattle,tag=!anvilBattleTeams,tag=!anvilBattle2,tag=!anvilBattleTeams2,tag=!anvilLobby] run function sprint_racer:items/item_tick/normal/anvil_of_justice/error

tag @s remove anvilRace
tag @s remove anvilBattle
tag @s remove anvilBattle2
tag @s remove anvilRaceTeams
tag @s remove anvilBattleTeams
tag @s remove anvilBattleTeams2