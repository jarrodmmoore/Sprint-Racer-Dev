#recall round sequence saved on this state
execute if score global saveState matches 1 run data modify storage sprint_racer:round_sequence custom set from storage sprint_racer:round_sequence custom_save_1
execute if score global saveState matches 2 run data modify storage sprint_racer:round_sequence custom set from storage sprint_racer:round_sequence custom_save_2
execute if score global saveState matches 3 run data modify storage sprint_racer:round_sequence custom set from storage sprint_racer:round_sequence custom_save_3
execute if score global saveState matches 4 run data modify storage sprint_racer:round_sequence custom set from storage sprint_racer:round_sequence custom_save_4
execute if score global saveState matches 5 run data modify storage sprint_racer:round_sequence custom set from storage sprint_racer:round_sequence custom_save_5
execute if score global saveState matches 6 run data modify storage sprint_racer:round_sequence custom set from storage sprint_racer:round_sequence custom_save_6
execute if score global saveState matches 7 run data modify storage sprint_racer:round_sequence custom set from storage sprint_racer:round_sequence custom_save_7
execute if score global saveState matches 8 run data modify storage sprint_racer:round_sequence custom set from storage sprint_racer:round_sequence custom_save_8
execute if score global saveState matches 9 run data modify storage sprint_racer:round_sequence custom set from storage sprint_racer:round_sequence custom_save_9
execute if score global saveState matches 10 run data modify storage sprint_racer:round_sequence custom set from storage sprint_racer:round_sequence custom_save_10

#nothing to translate here! see save_state_load_execute.
execute unless entity @s[type=player,scores={inputCooldown=1..}] if score global saveState matches 1 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 71 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute unless entity @s[type=player,scores={inputCooldown=1..}] if score global saveState matches 2 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 72 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute unless entity @s[type=player,scores={inputCooldown=1..}] if score global saveState matches 3 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 73 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute unless entity @s[type=player,scores={inputCooldown=1..}] if score global saveState matches 4 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 74 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute unless entity @s[type=player,scores={inputCooldown=1..}] if score global saveState matches 5 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 75 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute unless entity @s[type=player,scores={inputCooldown=1..}] if score global saveState matches 6 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 76 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute unless entity @s[type=player,scores={inputCooldown=1..}] if score global saveState matches 7 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 77 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute unless entity @s[type=player,scores={inputCooldown=1..}] if score global saveState matches 8 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 78 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute unless entity @s[type=player,scores={inputCooldown=1..}] if score global saveState matches 9 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 79 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute
execute unless entity @s[type=player,scores={inputCooldown=1..}] if score global saveState matches 10 as @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] positioned 1627 80 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_load_execute

execute unless entity @s[type=player,scores={inputCooldown=1..}] run scoreboard players set @s[type=player] inputCooldown 60