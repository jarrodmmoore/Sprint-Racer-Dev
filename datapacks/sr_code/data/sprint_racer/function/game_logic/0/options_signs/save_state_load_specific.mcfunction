execute unless score global gameState matches 0 run scoreboard players set #noLobbyReload value 1

#macro argument (must be in valid range)
$scoreboard players set #test4 value $(slot)
execute unless score #test4 value matches 1..10 run return 0
scoreboard players operation global saveState = #test4 value

#nothing to translate here! see save_state_load_execute.
execute if score global saveState matches 1 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 71 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute if score global saveState matches 2 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 72 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute if score global saveState matches 3 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 73 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute if score global saveState matches 4 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 74 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute if score global saveState matches 5 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 75 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute if score global saveState matches 6 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 76 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute if score global saveState matches 7 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 77 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute if score global saveState matches 8 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 78 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute if score global saveState matches 9 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 79 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute if score global saveState matches 10 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 80 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute