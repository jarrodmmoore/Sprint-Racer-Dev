#load the saved save state from before
scoreboard players set #noLobbyReload value 1
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] positioned 1627 67 460 run function sprint_racer:game_logic/0/save_state/load_block_state

#debug
#say overriden save state restored

#mark that we're no longer using a temporary save
scoreboard players set #settingsWereOverridden value 0