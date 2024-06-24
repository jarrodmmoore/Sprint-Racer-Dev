scoreboard players set #validSave value 1

#debug
#say save state loaded

#save our current settings into a hidden 11th slot that will be restored later
execute positioned 1627 68 460 run function sprint_racer:game_logic/0/save_state/save_current
execute positioned 1627 68 460 run setblock 1626 ~ 459 lime_wool

#remember that we have a temporary save state active
scoreboard players operation #temporarySave value = #requestSaveState value

#now load the new state
scoreboard players set #noLobbyReload value 1
function sprint_racer:game_logic/0/save_state/load_block_state