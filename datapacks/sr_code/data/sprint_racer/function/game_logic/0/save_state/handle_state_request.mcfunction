#requested save state must be valid, otherwise we don't load it
scoreboard players set #validSave value 0

#debug
#say save state requested

#load save state from the proper location
execute if score #requestSaveState value matches 1 as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] positioned 1627 71 460 if block 1626 ~ 459 lime_wool run function sprint_racer:game_logic/0/save_state/handle_state_request_valid
execute if score #requestSaveState value matches 2 as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] positioned 1627 72 460 if block 1626 ~ 459 lime_wool run function sprint_racer:game_logic/0/save_state/handle_state_request_valid
execute if score #requestSaveState value matches 3 as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] positioned 1627 73 460 if block 1626 ~ 459 lime_wool run function sprint_racer:game_logic/0/save_state/handle_state_request_valid
execute if score #requestSaveState value matches 4 as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] positioned 1627 74 460 if block 1626 ~ 459 lime_wool run function sprint_racer:game_logic/0/save_state/handle_state_request_valid
execute if score #requestSaveState value matches 5 as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] positioned 1627 75 460 if block 1626 ~ 459 lime_wool run function sprint_racer:game_logic/0/save_state/handle_state_request_valid
execute if score #requestSaveState value matches 6 as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] positioned 1627 76 460 if block 1626 ~ 459 lime_wool run function sprint_racer:game_logic/0/save_state/handle_state_request_valid
execute if score #requestSaveState value matches 7 as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] positioned 1627 77 460 if block 1626 ~ 459 lime_wool run function sprint_racer:game_logic/0/save_state/handle_state_request_valid
execute if score #requestSaveState value matches 8 as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] positioned 1627 78 460 if block 1626 ~ 459 lime_wool run function sprint_racer:game_logic/0/save_state/handle_state_request_valid
execute if score #requestSaveState value matches 9 as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] positioned 1627 79 460 if block 1626 ~ 459 lime_wool run function sprint_racer:game_logic/0/save_state/handle_state_request_valid
execute if score #requestSaveState value matches 10 as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] positioned 1627 80 460 if block 1626 ~ 459 lime_wool run function sprint_racer:game_logic/0/save_state/handle_state_request_valid

#error message if that didn't work
execute if score #validSave value matches 0 run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.save_state.save_state","color":"yellow"},{"translate":"sr.lobby.save_state.cannot_load_empty","color":"red"}]

#clear state request
scoreboard players set #requestSaveState value 0